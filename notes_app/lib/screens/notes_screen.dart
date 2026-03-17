import 'package:flutter/material.dart';
import 'package:notes_app/database/notes_database.dart';
import 'package:notes_app/screens/note_card.dart';
import 'package:notes_app/screens/note_dialog.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NameState();
}

class _NameState extends State<NotesScreen> {
  List<Map<String, dynamic>> notes = [];
  @override
  void initState() {
    super.initState();
    fetchNotes();
  }

  Future<void> fetchNotes() async {
    final fetchNotes = await NotesDatabase.instance.getNotes();

    setState(() {
      notes = fetchNotes;
    });
  }

  final List<Color> noteColor = [
    const Color(0xFFF3E5F5), // Light Purple
    const Color(0xFFFFF3E0), // Light Orange
    const Color(0xFFE1F5FE), // Light Blue
    const Color(0xFFFCE4EC), // Light Pink
    const Color(0xFFB9CFF0), // Baby Blue
    const Color(0xFFFFABAB), // Light Red
    const Color(0xFFB2F9FC), // Light Cyan
    const Color(0xFFFFD59A), // Light Peach
    const Color(0xFFFFE4B5), // Moccasin
    const Color(0xFF98FB98), // Pale Green
    const Color(0xFFFFD700), // Gold
    const Color(0xFFAFEEEE), // Pale Turquoise
    const Color(0xFFFFB6C1), // Light Pink
    const Color(0xFFFAFAD2), // Light Goldenrod Yellow
    const Color(0xFFD3D3D3), // Light Grey
  ];

  void showNoteDialog({
    int? id,
    String? title,
    String? content,
    int colorIndex = 0,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return NoteDialog(
          colorIndex: colorIndex,
          noteColors: noteColor,
          noteId: id,
          title: title,
          content: content,
          noNoteSaved:
              (
                newTitle,
                newDescription,
                selectedColorIndex,
                currentDate,
              ) async {
                if (id == null) {
                  await NotesDatabase.instance.addNotes(
                    newTitle,
                    newDescription,
                    currentDate,
                    selectedColorIndex,
                  );
                } else {
                  await NotesDatabase.instance.updateNotes(
                    id,
                    newTitle,
                    newDescription,
                    currentDate,
                    selectedColorIndex,
                  );
                }
              },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Notes",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 28,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // async {
          //   await NotesDatabase.instance.addNotes(
          //     'Sample Title',
          //     'Sample Desc',
          //     '2025-01-01',
          //     0,
          //   );
          showNoteDialog();
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: notes.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notes_outlined,
                    size: 80,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "No Notes Found",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];

                  return NoteCard(
                    note: note,
                    onDelete: () async {
                      await NotesDatabase.instance.deleteNotes(note['id']);
                      fetchNotes();
                    },
                    onTap: () {
                      showNoteDialog(
                        id: note['id'],
                        title: note['title'],
                        content: note['content'],
                        colorIndex: note['color'],
                      );
                    },
                    noteColors: noteColor,
                  );
                },
              ),
            ),
    );
  }
}

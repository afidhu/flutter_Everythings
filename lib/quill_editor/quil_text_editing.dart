import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class QuilTextEditing extends StatefulWidget {
  const QuilTextEditing({super.key});

  @override
  State<QuilTextEditing> createState() => _QuilTextEditingState();
}

class _QuilTextEditingState extends State<QuilTextEditing> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(middle: const Text('Quill Editor')),
      body: Container(
        // color: Colors.white,
        child: Column(
          children: [
            QuillSimpleToolbar(
              controller: _controller,
              config: const QuillSimpleToolbarConfig(
                color: Colors.black,
                customButtons: [
                  QuillToolbarCustomButtonOptions(
                    iconTheme: QuillIconTheme(
                      iconButtonSelectedData: IconButtonData(
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ],
                multiRowsDisplay: true, // IMPORTANT: allows toolbar to show all tools
                // --- TEXT STYLE BUTTONS ---
                showBoldButton: true,
                showItalicButton: true,
                showUnderLineButton: true,
                showStrikeThrough: true,
                showClearFormat: true,

                // --- HEADERS ---
                showHeaderStyle: true,

                // --- FONT SIZE / FONT FAMILY ---
                showFontSize: true,
                showFontFamily: true, // If supported by your version
                // --- COLORS ---
                showColorButton: true,
                showBackgroundColorButton: true,

                // --- ALIGNMENT ---
                showAlignmentButtons: true,
                showLeftAlignment: true,
                showCenterAlignment: true,
                showRightAlignment: true,
                showJustifyAlignment: true,

                // --- LISTS ---
                showListBullets: true,
                showListNumbers: true,
                showListCheck: true,

                // --- INDENT / OUTDENT ---
                showIndent: true,
                // showOutdent: true,

                // --- QUOTE & CODE BLOCK ---
                showQuote: true,
                showCodeBlock: true,

                // --- LINKS ---
                showLink: true,
                showInlineCode: true,

                // --- UNDO / REDO ---
                showUndo: true,
                showRedo: true,

                // --- MEDIA ---
                // showImageButton: true,
                // showVideoButton: true,
                // showCameraButton: true,

                // --- OTHER ---
                showDirection: true, // RTL/LTR
                showSuperscript: true,
                showSubscript: true,
                showSearchButton: true,
              ),
            ),

            Expanded(
              child: QuillEditor.basic(
                controller: _controller,
                config: QuillEditorConfig(
                  scrollable: true,

                  // detectWordBoundary: true,
                  // floatingCursorDisabled: true,
                  // enableSelectionToolbar: true,
                  // enableInteractiveSelection: true,
                  // enableScribble: true,
                  // disableClipboard: true,

                  padding: const EdgeInsets.all(16.0),
                  dialogTheme: const QuillDialogTheme(
                    dialogBackgroundColor: Colors.white,
                  ),
                  customStyles: DefaultStyles(
                    color: Colors.white,
                    paragraph: DefaultTextBlockStyle(
                      const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87, // Word-like text color
                        height: 1.4, // Line spacing like Word
                      ),
                      HorizontalSpacing.zero,
                      const VerticalSpacing(8, 0),
                      VerticalSpacing.zero, // Paragraph spacing like Word
                      null,
                    ),
                    h1: DefaultTextBlockStyle(
                      const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      HorizontalSpacing.zero,
                      const VerticalSpacing(24, 16),
                      VerticalSpacing.zero,
                      null,
                    ),
                    h2: DefaultTextBlockStyle(
                      const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      HorizontalSpacing.zero,
                      const VerticalSpacing(20, 12),
                      VerticalSpacing.zero,
                      null,
                    ),
                    h3: DefaultTextBlockStyle(
                      const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                      HorizontalSpacing.zero,
                      const VerticalSpacing(20, 12),
                      VerticalSpacing.zero,
                      null,
                    ),
                    bold: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    italic: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),

            OutlinedButton(
              onPressed: () {
                print('toPlainText: ${_controller.document.toPlainText()}');
                final json = _controller.document.toDelta().toJson();
                print("Saved JSON: $json");
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

// QuillEditor.basic(
// controller: _controller,
// // readOnly: false,
// // autoFocus: true,
// // expands: true,
// ),

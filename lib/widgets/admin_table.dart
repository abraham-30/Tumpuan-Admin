import 'package:flutter/material.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/widgets/regularbtn.dart';

class AdminTable extends StatelessWidget{
  const AdminTable({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
        children:[
          Align(
            alignment: Alignment.centerLeft,
          child: Container(
          // height: 400,
          padding: const EdgeInsets.all(20),
          constraints: BoxConstraints(
            minHeight: 600,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Pallete.pink0
            )
          ),
          child: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      'Test',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    FilledButton(onPressed: (){}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Pallete.blackColor),
                      ),
                      child: Text('Trash')),
                  ],)
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FilledButton(onPressed: (){}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Pallete.pink4),
                      ),
                      child: Text('Show'))
                    ],)
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        // fit: FlexFit.tight,
                        child: Container(
                          height: 25,
                          width: 50,
                          child: Center(
                            child: Text('100'),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Pallete.pink4
                            )
                          ),
                        ),
                      ),
                       SearchBar(
                        // controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0)),
                        // onTap: () {
                        //   controller.openView();
                        // },
                        // onChanged: (_) {
                        //   controller.openView();
                        // },
                        leading: const Icon(Icons.search),
                        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                      ),
                    ],  
                  ),
                ),
                SizedBox(height: 25,),
                Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Table(
                        border: TableBorder.all(color: Pallete.pink0),
                        // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          const TableRow(
                            decoration: BoxDecoration(
                              color: Pallete.pink0
                            ),
                            children: [
                              TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text('Column 1',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text('Column 2',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text('Column 3',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                                ],
                              ),
                              ...List.generate(3, (index) => const TableRow(
                                children: [
                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text('Cells 1'),
                                    ),
                                  ),
                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text('Cells 2'),
                                    ),
                                  ),
                                  TableCell(verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text('Cells 3'),
                                    ),
                                  ),
                                ],
                              ), 
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
                ),
              ],
            )
          ),
        )]
       ),
    );
  }
}
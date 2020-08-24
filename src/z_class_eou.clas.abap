CLASS z_class_eou DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_CLASS_EOU IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write('Hello World!').
    out->write('Hello SAP Cloud Platform ABAP Environment!').
  ENDMETHOD.
ENDCLASS.

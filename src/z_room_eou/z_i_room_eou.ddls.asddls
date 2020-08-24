@AbapCatalog.sqlViewName: 'Z_M_ROOM_EOU'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Room EOU'
@Search.searchable: true

@UI.headerInfo: { typeName: 'Room', typeNamePlural: 'Rooms', title.value: 'ID' }
define root view Z_I_Room_Eou
  as select from zroom_eou as Room
  association [0..1] to I_BusinessUser as _SAPSysAdminDataChangeUser on _SAPSysAdminDataChangeUser.UserID = $projection.lastchangedbyuser
{
      @UI.facet: [ { type: #COLLECTION, position: 1, id: 'ROOM', label: 'Room'  }, { type: #IDENTIFICATION_REFERENCE, position: 1, parentId: 'ROOM', label: 'General Information'}]
      @EndUserText: { label: 'ID' }
      @Search: { defaultSearchElement: true }
      @UI: { lineItem: [{ position: 1 }], identification: [{ position: 1 }] }
  key Room.id,
      @EndUserText: { label: 'Seats' }
      @UI: { lineItem: [{ position: 3 }], identification: [{ position: 2 }] }
      Room.seats,
      @EndUserText: { label: 'Location' }
      @UI: { lineItem: [{ position: 4 }], identification: [{ position: 3 }] }
      Room.location,
      @EndUserText: { label: 'Has Beamer' }
      @UI: { lineItem: [{ position: 5 }], identification: [{ position: 4 }] }
      Room.hasbeamer,
      @EndUserText: { label: 'Has Video' }
      @UI: { lineItem: [{ position: 7 }], identification: [{ position: 5 }] }
      Room.hasvideo,
      @EndUserText: { label: 'User Rating' }
      @UI: { lineItem: [{ position: 8 }], identification: [{ position: 6 }] }
      userrating,
      @EndUserText: { label: 'Last Changed On' }
      @UI: { identification: [{ position: 7 }] }
      Room.lastchangeddatetime,
      @EndUserText: { label: 'Last Changed By' }
      @UI: { identification: [{ position: 8 }], textArrangement: #TEXT_ONLY }
      Room.lastchangedbyuser,
      @UI.hidden: true
      _SAPSysAdminDataChangeUser
}

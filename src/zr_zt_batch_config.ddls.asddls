@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZZT_BATCH_CONFIG'
define root view entity ZR_ZT_BATCH_CONFIG
  as select from zzt_batch_config
{
  key uuid                   as UUID,
      object                 as Object,
      objectname             as Objectname,
      fmname                 as Fmname,
      mimetype               as Mimetype,
      sheetname              as Sheetname,
      structname             as Structname,
      @Semantics.mimeType: true
      mime_type_for_template as MimeTypeForTemplate,
      @Semantics.largeObject:
      { mimeType: 'MimeTypeForTemplate',
      fileName: 'FileName',
      contentDispositionPreference: #ATTACHMENT }
      template               as Template,
      file_name              as FileName,
      start_line             as StartLine,
      start_column           as StartColumn,
      @Semantics.user.createdBy: true
      created_by             as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at             as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by        as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at        as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at  as LocalLastChangedAt

}

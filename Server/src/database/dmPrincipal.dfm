object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 304
  Width = 396
  object DWServerEvents: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'e_procedimento'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 's_resultado'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'usuario'
        EventName = 'usuarios'
        OnlyPreDefinedParams = False
        OnReplyEventByType = DWServerEventsEventsusuarioReplyEventByType
      end>
    Left = 176
    Top = 128
  end
end

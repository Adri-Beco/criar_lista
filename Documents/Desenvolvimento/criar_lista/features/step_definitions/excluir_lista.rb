Dado('que tenho uma lista pronta no meu manager') do
    user.load  
    find("#drawerHeight > section > ic-drawer-content > section > div:nth-child(2) > ul > li:nth-child(2)").click
    texto = find('#render-tab > store-list > section > div.widget.widget-list-editor.ng-scope.ng-isolate-scope > header > span')
    expect(texto.text).to eql "Suas listas"
    @título_da_lista = find('.mdl-list__item:last-child .mdl-list__item-title').text
    find("#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelection").click
  end
  
  Quando('quero remover clico no menu') do
    find('.mdl-list__item:last-child button').click
  end
  
  Quando('clico na opção remover') do
    find('.mdl-list__item:last-child .mdl-menu li:last-child').click
    sleep 2
  end

  Quando('uma mensagem de alerta é exibida') do
    within('.mdl-dialog[dialog-scope-interface="vm.storeDeleteDialog"]') do 
    texto = find('.content-title')    
    expect(texto.text).to eql "Remover lista"
    end
end     
  
  Quando('clico em remover') do
    within('.mdl-dialog[dialog-scope-interface="vm.storeDeleteDialog"]') do 
        find('div.mdl-dialog__actions.ng-scope > button.mdl-button.mdl-js-button.mdl-button--azure-color').click
  end
end 
  
  Então('a lista deve ser removida') do
    texto = find('.mdl-list__item:last-child .mdl-list__item-title')
    expect(texto.text).not_to eq @titulo_da_lista
    sleep 2
  end
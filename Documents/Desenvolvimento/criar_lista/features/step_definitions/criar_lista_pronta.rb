Dado('que estou logada no painel e quero fazer uma lista') do
        user.load  
    find("#drawerHeight > section > ic-drawer-content > section > div:nth-child(2) > ul > li:nth-child(2)").click
    texto = find('#render-tab > store-list > section > div.widget.widget-list-editor.ng-scope.ng-isolate-scope > header > span')
    expect(texto.text).to eql "Suas listas"
    find("#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowallSelection").click
end

  
Quando('eu clicar no botão de Criar') do
    find("#render-tab > store-list > section > button.stores-list__button.stores-list__button--add-list").click
    sleep 1
end
  
Quando('escolher a lista pronta na página') do
    texto = find('.container > .title')
    expect(texto.text).to eql "Crie sua lista"
    elemento = ".container > section:nth-child(3) .lists__content > div:first-child > div:first-child .list-card"
    @titulo_da_lista = find("#{elemento} h1").text #cotas de lua mel
    find(elemento).click
    sleep 2
end
  
Quando('clicar em publicar lista') do
    find("#body > ng-view > div > section > footer > div > div > button").click
end  
  
Quando('escolher a página onde ela será publicada') do
    within('.store-list-dialog div.mdl-dialog--container[ng-click="vm.stopPropagation($event)"]') do
        find('div.store-list-dialog.mdl-dialog.mdl-dialog-visible > div > div.mdl-dialog__content > ng-transclude > div > div > div.ngsb-container > li[ng-if="vm.showAddListBlank"] > label').click 
  end
end

Quando('clicar em continuar') do
    within('.store-list-dialog div.mdl-dialog--container[ng-click="vm.stopPropagation($event)"]') do
        find('div.mdl-dialog__actions.ng-scope > button.mdl-button.mdl-js-button.mdl-button--azure-color').click
        sleep 2
    end
end

Então('a lista foi adicionada no manager de listas') do
    texto = find('.mdl-list__item:last-child .mdl-list__item-title')
    expect(texto.text).to eql @titulo_da_lista
    sleep 5
end    
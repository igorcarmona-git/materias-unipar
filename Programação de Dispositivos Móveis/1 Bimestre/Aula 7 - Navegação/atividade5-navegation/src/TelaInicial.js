import * as React from 'react';
import { View, Text, Button, TextInput } from 'react-native';

function TelaInicial({ route, navigation }) {
  const { nome } = route.params || {}; {/* Pega o conteudo do parametro nome da segunda tela */}

  return (
    <View>
      <Text style={{ flex:1, fontSize:16, padding:8, alignItems:'center', justifyContent:'center', marginVertical:8 }}>
      Aqui é onde será mostrado todo o conteudo principal da página
      </Text>

      <Button
        title="Ir para a tela de input de usuário!"
        onPress={() => navigation.navigate('InfoUser')}
      />

      <Text>
      { nome && <Text>Nome: {nome}</Text> } {/* Se ambos tiverem forem true, então só aparece na tela incial se houver nome.*/}
      </Text>
    </View>
  );
}

export default TelaInicial;
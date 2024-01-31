import React, { useState } from 'react';
import { View, Text, Button, TextInput } from 'react-native';

function SegundaTela({ navigation }) {
  const [nome, setNome] = useState('');

  const navigateSubmeter = () => {
    navigation.navigate('Home', { nome }); {/* Passa como parametro para usar o route */}
  }

  return (
    <View>
      <Text style={{
        flex:1, fontSize: 16, alignItems:'center', justifyContent:'center', padding:8, marginVertical: 8
      }}>Digite o nome de usuário abaixo:</Text>

      <TextInput
        placeholder="Digite seu nome"
        value={nome}
        onChangeText={(text) => setNome(text)}
      />

      <Button title='Submeter' onPress={ navigateSubmeter } />
      <Button title="Voltar" onPress ={() => navigation.goBack() }/> {/* Volta para a página anterior, botao */}
    </View>
  );
}

export default SegundaTela;
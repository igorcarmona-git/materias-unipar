import React from 'react';
import { Text, SafeAreaView } from 'react-native';

const FraseFora = (props) => {
  return(
    <SafeAreaView>
      <Text style={ {
        fontWeight: 'bold',
        fontSize: 40,
        textAlign: 'center',
        borderWidth: 2,
        backgroundColor: 'white',
        } 
      } >{props.nome}</Text>
    </SafeAreaView>
  )
}

export default FraseFora;
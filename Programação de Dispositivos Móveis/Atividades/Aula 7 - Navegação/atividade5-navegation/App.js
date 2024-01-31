import * as React from 'react';
import { View, Text } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';

import TelaInicial from "./src/TelaInicial";
import SegundaTela from "./src/SegundaTela";

const Stack = createStackNavigator();

const App = () => {
  return(
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen 
          name="Home" 
          component={TelaInicial}
          options={{ title: "Página Inicial!" }}
        />
        
        <Stack.Screen 
          name="InfoUser" 
          component={SegundaTela}
          options={{ title: "Tela de info de usuários!" }}
        />

      </Stack.Navigator>
    </NavigationContainer>
  )
}

export default App;
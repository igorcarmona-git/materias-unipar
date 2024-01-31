import { useState } from "react";
import { Text, Button, View, StyleSheet } from "react-native";

const CompraProduto = (props) => {
  const [produto, setProduto] = useState(false);

  return (
    <View>
      <View style={styles.button}>
        <Button
          onPress={() => {
            setProduto(true);
          }}
          title="Clique para comprar Mouse"
          disabled={produto == true}
          color="red"
        ></Button>
      </View>

      <Text>
        {" "}
        Oi {props.cliente},{" "}
        {produto ? "Muito obrigado pela compra" : "Experimente o mouse"}{" "}
      </Text>
    </View>
  );
};

const styles = StyleSheet.create({
  button: {
    marginTop: 10,
  },
});

export default CompraProduto;

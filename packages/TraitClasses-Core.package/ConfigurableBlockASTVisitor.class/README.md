A client using this AST-visitor can configure blocks to be evaluated when nodes of different types are visited.
A simple Dictionary mapping symbols (identifying nodes) to block-objects is maintained internally.
Registered Blocks get up to two arguments (optionally): the visited node and the node-symbol.

The registered symbols are derived from the node-type, e.g. #BlockNode, #IdentifierNode, #Node or #Arguments.
See the instance-side methods of ConfigurableASTVisitor to get a list of these symbols.

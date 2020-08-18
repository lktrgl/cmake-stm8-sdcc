#include <custom_state_diagram.h>

int main ( int arc, char** argv )
{
  ( void ) arc;
  ( void ) argv;

  run_state_machine ( &g_state_diagram_custom );

  return 0;
}

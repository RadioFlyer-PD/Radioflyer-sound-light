int iscntrl(int c)
{
	return(c < ' ' || c == 0x7f);
}

namespace System
{
    internal class MouseEventArgs
    {
        private Action<object, Windows.Forms.MouseEventArgs> dgvHoaDon_MouseHover;

        public MouseEventArgs(Action<object, Windows.Forms.MouseEventArgs> dgvHoaDon_MouseHover)
        {
            this.dgvHoaDon_MouseHover = dgvHoaDon_MouseHover;
        }
    }
}
package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatDialogFragment extends DialogFragment {
    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new w(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setupDialog(Dialog dialog, int i11) {
        if (!(dialog instanceof w)) {
            super.setupDialog(dialog, i11);
            return;
        }
        w wVar = (w) dialog;
        if (i11 != 1 && i11 != 2) {
            if (i11 != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        wVar.supportRequestWindowFeature(1);
    }
}

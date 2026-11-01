package np;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: loaded from: classes6.dex */
public interface a extends TextWatcher {

    /* JADX INFO: renamed from: np.a$a, reason: collision with other inner class name */
    public static final class C0853a {
        public static void a(a aVar, Editable editable) {
        }

        public static void b(a aVar, CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    @Override // android.text.TextWatcher
    void afterTextChanged(Editable editable);

    @Override // android.text.TextWatcher
    void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13);
}

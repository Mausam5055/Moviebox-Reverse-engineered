package androidx.compose.ui.text.input;

import android.R;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public final class z implements InputConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q f6282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f6283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextFieldValue f6285d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6287f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f6288g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6289h = true;

    public z(TextFieldValue textFieldValue, q qVar, boolean z10) {
        this.f6282a = qVar;
        this.f6283b = z10;
        this.f6285d = textFieldValue;
    }

    private final void a(m mVar) {
        b();
        try {
            this.f6288g.add(mVar);
        } finally {
            c();
        }
    }

    private final boolean b() {
        this.f6284c++;
        return true;
    }

    private final boolean c() {
        int i11 = this.f6284c - 1;
        this.f6284c = i11;
        if (i11 == 0 && !this.f6288g.isEmpty()) {
            this.f6282a.e(CollectionsKt.U0(this.f6288g));
            this.f6288g.clear();
        }
        return this.f6284c > 0;
    }

    private final void d(int i11) {
        sendKeyEvent(new KeyEvent(0, i11));
        sendKeyEvent(new KeyEvent(1, i11));
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        boolean z10 = this.f6289h;
        return z10 ? b() : z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i11) {
        boolean z10 = this.f6289h;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
        this.f6288g.clear();
        this.f6284c = 0;
        this.f6289h = false;
        this.f6282a.b(this);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        boolean z10 = this.f6289h;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i11, Bundle bundle) {
        boolean z10 = this.f6289h;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        boolean z10 = this.f6289h;
        return z10 ? this.f6283b : z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i11) {
        boolean z10 = this.f6289h;
        if (z10) {
            a(new a(String.valueOf(charSequence), i11));
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i11, int i12) {
        boolean z10 = this.f6289h;
        if (!z10) {
            return z10;
        }
        a(new k(i11, i12));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i11, int i12) {
        boolean z10 = this.f6289h;
        if (!z10) {
            return z10;
        }
        a(new l(i11, i12));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        return c();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        boolean z10 = this.f6289h;
        if (!z10) {
            return z10;
        }
        a(new n());
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i11) {
        return TextUtils.getCapsMode(this.f6285d.f(), androidx.compose.ui.text.b0.j(this.f6285d.e()), i11);
    }

    @Override // android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i11) {
        boolean z10 = (i11 & 1) != 0;
        this.f6287f = z10;
        if (z10) {
            this.f6286e = extractedTextRequest != null ? extractedTextRequest.token : 0;
        }
        return s.a(this.f6285d);
    }

    @Override // android.view.inputmethod.InputConnection
    public Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i11) {
        if (androidx.compose.ui.text.b0.f(this.f6285d.e())) {
            return null;
        }
        return d0.a(this.f6285d).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i11, int i12) {
        return d0.b(this.f6285d, i11).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i11, int i12) {
        return d0.c(this.f6285d, i11).toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i11) {
        boolean z10 = this.f6289h;
        if (z10) {
            z10 = false;
            switch (i11) {
                case R.id.selectAll:
                    a(new c0(0, this.f6285d.f().length()));
                    break;
                case R.id.cut:
                    d(277);
                    break;
                case R.id.copy:
                    d(278);
                    break;
                case R.id.paste:
                    d(279);
                    break;
            }
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i11) {
        int iA;
        boolean z10 = this.f6289h;
        if (!z10) {
            return z10;
        }
        if (i11 != 0) {
            switch (i11) {
                case 2:
                    iA = o.f6240b.c();
                    break;
                case 3:
                    iA = o.f6240b.g();
                    break;
                case 4:
                    iA = o.f6240b.h();
                    break;
                case 5:
                    iA = o.f6240b.d();
                    break;
                case 6:
                    iA = o.f6240b.b();
                    break;
                case 7:
                    iA = o.f6240b.f();
                    break;
                default:
                    Log.w("RecordingIC", "IME sends unsupported Editor Action: " + i11);
                    iA = o.f6240b.a();
                    break;
            }
        } else {
            iA = o.f6240b.a();
        }
        this.f6282a.d(iA);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z10 = this.f6289h;
        if (z10) {
            return true;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z10) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i11) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14 = this.f6289h;
        if (!z14) {
            return z14;
        }
        boolean z15 = false;
        boolean z16 = (i11 & 1) != 0;
        boolean z17 = (i11 & 2) != 0;
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 33) {
            boolean z18 = (i11 & 16) != 0;
            boolean z19 = (i11 & 8) != 0;
            boolean z20 = (i11 & 4) != 0;
            if (i12 >= 34 && (i11 & 32) != 0) {
                z15 = true;
            }
            if (z18 || z19 || z20 || z15) {
                z11 = z15;
                z10 = z20;
                z13 = z19;
                z12 = z18;
            } else if (i12 >= 34) {
                z12 = true;
                z13 = true;
                z10 = true;
                z11 = true;
            } else {
                z11 = z15;
                z12 = true;
                z13 = true;
                z10 = true;
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = true;
            z13 = true;
        }
        this.f6282a.c(z16, z17, z12, z13, z10, z11);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        boolean z10 = this.f6289h;
        if (!z10) {
            return z10;
        }
        this.f6282a.a(keyEvent);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i11, int i12) {
        boolean z10 = this.f6289h;
        if (z10) {
            a(new a0(i11, i12));
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i11) {
        boolean z10 = this.f6289h;
        if (z10) {
            a(new b0(String.valueOf(charSequence), i11));
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i11, int i12) {
        boolean z10 = this.f6289h;
        if (!z10) {
            return z10;
        }
        a(new c0(i11, i12));
        return true;
    }
}

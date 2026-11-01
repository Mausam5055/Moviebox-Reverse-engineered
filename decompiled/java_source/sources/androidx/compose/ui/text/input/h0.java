package androidx.compose.ui.text.input;

import android.view.Choreographer;
import android.view.inputmethod.EditorInfo;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.Executor;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {
    public static final Executor d(final Choreographer choreographer) {
        return new Executor() { // from class: androidx.compose.ui.text.input.f0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                h0.e(choreographer, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Choreographer choreographer, final Runnable runnable) {
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.compose.ui.text.input.g0
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j11) {
                h0.f(runnable, j11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Runnable runnable, long j11) {
        runnable.run();
    }

    private static final boolean g(int i11, int i12) {
        return (i11 & i12) == i12;
    }

    public static final void h(EditorInfo editorInfo, p pVar, TextFieldValue textFieldValue) {
        String strA;
        int iD = pVar.d();
        o.a aVar = o.f6240b;
        int i11 = 6;
        if (o.l(iD, aVar.a())) {
            if (!pVar.g()) {
                i11 = 0;
            }
        } else if (o.l(iD, aVar.e())) {
            i11 = 1;
        } else if (o.l(iD, aVar.c())) {
            i11 = 2;
        } else if (o.l(iD, aVar.d())) {
            i11 = 5;
        } else if (o.l(iD, aVar.f())) {
            i11 = 7;
        } else if (o.l(iD, aVar.g())) {
            i11 = 3;
        } else if (o.l(iD, aVar.h())) {
            i11 = 4;
        } else if (!o.l(iD, aVar.b())) {
            throw new IllegalStateException("invalid ImeAction");
        }
        editorInfo.imeOptions = i11;
        x xVarF = pVar.f();
        if (xVarF != null && (strA = xVarF.a()) != null) {
            editorInfo.privateImeOptions = strA;
        }
        int iE = pVar.e();
        u.a aVar2 = u.f6266a;
        if (u.k(iE, aVar2.h())) {
            editorInfo.inputType = 1;
        } else if (u.k(iE, aVar2.a())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (u.k(iE, aVar2.d())) {
            editorInfo.inputType = 2;
        } else if (u.k(iE, aVar2.g())) {
            editorInfo.inputType = 3;
        } else if (u.k(iE, aVar2.i())) {
            editorInfo.inputType = 17;
        } else if (u.k(iE, aVar2.c())) {
            editorInfo.inputType = 33;
        } else if (u.k(iE, aVar2.f())) {
            editorInfo.inputType = 129;
        } else if (u.k(iE, aVar2.e())) {
            editorInfo.inputType = 18;
        } else {
            if (!u.k(iE, aVar2.b())) {
                throw new IllegalStateException("Invalid Keyboard Type");
            }
            editorInfo.inputType = InputDeviceCompat.SOURCE_MOUSE;
        }
        if (!pVar.g() && g(editorInfo.inputType, 1)) {
            editorInfo.inputType |= 131072;
            if (o.l(pVar.d(), aVar.a())) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (g(editorInfo.inputType, 1)) {
            int iC = pVar.c();
            t.a aVar3 = t.f6260a;
            if (t.f(iC, aVar3.a())) {
                editorInfo.inputType |= 4096;
            } else if (t.f(iC, aVar3.d())) {
                editorInfo.inputType |= 8192;
            } else if (t.f(iC, aVar3.c())) {
                editorInfo.inputType |= 16384;
            }
            if (pVar.b()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = androidx.compose.ui.text.b0.k(textFieldValue.e());
        editorInfo.initialSelEnd = androidx.compose.ui.text.b0.g(textFieldValue.e());
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textFieldValue.f());
        editorInfo.imeOptions |= ASTNode.PCTX_STORED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(EditorInfo editorInfo) {
        if (EmojiCompat.i()) {
            EmojiCompat.c().v(editorInfo);
        }
    }
}

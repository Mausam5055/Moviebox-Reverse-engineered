package j2;

import androidx.media3.common.i0;
import androidx.media3.exoplayer.z3;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f65754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z3[] f65755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z[] f65756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i0 f65757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f65758e;

    public f0(z3[] z3VarArr, z[] zVarArr, i0 i0Var, Object obj) {
        androidx.media3.common.util.a.a(z3VarArr.length == zVarArr.length);
        this.f65755b = z3VarArr;
        this.f65756c = (z[]) zVarArr.clone();
        this.f65757d = i0Var;
        this.f65758e = obj;
        this.f65754a = z3VarArr.length;
    }

    public boolean a(f0 f0Var) {
        if (f0Var == null || f0Var.f65756c.length != this.f65756c.length) {
            return false;
        }
        for (int i11 = 0; i11 < this.f65756c.length; i11++) {
            if (!b(f0Var, i11)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(f0 f0Var, int i11) {
        return f0Var != null && Objects.equals(this.f65755b[i11], f0Var.f65755b[i11]) && Objects.equals(this.f65756c[i11], f0Var.f65756c[i11]);
    }

    public boolean c(int i11) {
        return this.f65755b[i11] != null;
    }
}

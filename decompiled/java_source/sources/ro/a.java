package ro;

import android.text.Editable;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.comment.i0;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f74590a = 300;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i0 f74591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Editable f74592c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CommentBean f74593d;

    public final i0 a() {
        return this.f74591b;
    }

    public final Editable b() {
        return this.f74592c;
    }

    public final int c() {
        return this.f74590a;
    }

    public final CommentBean d() {
        return this.f74593d;
    }

    public final void e() {
        this.f74593d = null;
        this.f74592c = null;
    }

    public final void f(i0 i0Var) {
        this.f74591b = i0Var;
    }

    public final void g(Editable editable) {
        this.f74592c = editable;
    }

    public final void h(int i11) {
        this.f74590a = i11;
    }

    public final void i(CommentBean commentBean) {
        this.f74593d = commentBean;
    }
}

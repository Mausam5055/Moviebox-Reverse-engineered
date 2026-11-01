package xs;

import android.view.View;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.Subject;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0963a f78426g = new C0963a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f78427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f78428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Subject f78429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final OperateItem f78430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f78431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f78432f;

    /* JADX INFO: renamed from: xs.a$a, reason: collision with other inner class name */
    public static final class C0963a {
        private C0963a() {
        }

        public /* synthetic */ C0963a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(int i11, View view, Subject subject, OperateItem operateItem, int i12, boolean z10) {
        this.f78427a = i11;
        this.f78428b = view;
        this.f78429c = subject;
        this.f78430d = operateItem;
        this.f78431e = i12;
        this.f78432f = z10;
    }

    public /* synthetic */ a(int i11, View view, Subject subject, OperateItem operateItem, int i12, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i13 & 2) != 0 ? null : view, (i13 & 4) != 0 ? null : subject, (i13 & 8) == 0 ? operateItem : null, (i13 & 16) != 0 ? 0 : i12, (i13 & 32) == 0 ? z10 : false);
    }

    public final OperateItem a() {
        return this.f78430d;
    }

    public final Subject b() {
        return this.f78429c;
    }

    public final int c() {
        return this.f78431e;
    }

    public final int d() {
        return this.f78427a;
    }

    public final View e() {
        return this.f78428b;
    }

    public final boolean f() {
        return this.f78432f;
    }
}

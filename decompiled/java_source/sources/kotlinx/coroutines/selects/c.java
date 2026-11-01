package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f67952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function3 f67953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function3 f67954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function3 f67955d;

    public c(Object obj, Function3 function3, Function3 function4) {
        this.f67952a = obj;
        this.f67953b = function3;
        this.f67954c = function4;
        this.f67955d = g.f67960a;
    }

    public /* synthetic */ c(Object obj, Function3 function3, Function3 function4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function3, (i11 & 4) != 0 ? null : function4);
    }
}

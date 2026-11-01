package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f67956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function3 f67957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function3 f67958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function3 f67959d;

    public e(Object obj, Function3 function3, Function3 function4, Function3 function5) {
        this.f67956a = obj;
        this.f67957b = function3;
        this.f67958c = function4;
        this.f67959d = function5;
    }

    public /* synthetic */ e(Object obj, Function3 function3, Function3 function4, Function3 function5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function3, function4, (i11 & 8) != 0 ? null : function5);
    }
}

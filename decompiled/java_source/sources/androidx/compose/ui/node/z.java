package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(LookaheadCapablePlaceable lookaheadCapablePlaceable, androidx.compose.ui.layout.a aVar) {
        LookaheadCapablePlaceable lookaheadCapablePlaceableW0 = lookaheadCapablePlaceable.W0();
        if (!(lookaheadCapablePlaceableW0 != null)) {
            g0.a.b("Child of " + lookaheadCapablePlaceable + " cannot be null when calculating alignment line");
        }
        if (lookaheadCapablePlaceable.b1().v().containsKey(aVar)) {
            Integer num = (Integer) lookaheadCapablePlaceable.b1().v().get(aVar);
            if (num != null) {
                return num.intValue();
            }
            return Integer.MIN_VALUE;
        }
        int iT0 = lookaheadCapablePlaceableW0.T0(aVar);
        if (iT0 == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        lookaheadCapablePlaceableW0.o1(true);
        lookaheadCapablePlaceable.n1(true);
        lookaheadCapablePlaceable.m1();
        lookaheadCapablePlaceableW0.o1(false);
        lookaheadCapablePlaceable.n1(false);
        return iT0 + (aVar instanceof androidx.compose.ui.layout.h ? o0.p.i(lookaheadCapablePlaceableW0.e1()) : o0.p.h(lookaheadCapablePlaceableW0.e1()));
    }
}

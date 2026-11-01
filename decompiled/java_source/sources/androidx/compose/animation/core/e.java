package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f2421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AnimationEndReason f2422b;

    public e(i iVar, AnimationEndReason animationEndReason) {
        this.f2421a = iVar;
        this.f2422b = animationEndReason;
    }

    public String toString() {
        return "AnimationResult(endReason=" + this.f2422b + ", endState=" + this.f2421a + ')';
    }
}

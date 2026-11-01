package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieFeatureFlag;
import com.airbnb.lottie.h;
import m4.l;
import r4.c;
import v4.f;

/* JADX INFO: loaded from: classes.dex */
public class MergePaths implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MergePathsMode f17789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f17790c;

    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i11) {
            if (i11 == 1) {
                return MERGE;
            }
            if (i11 == 2) {
                return ADD;
            }
            if (i11 == 3) {
                return SUBTRACT;
            }
            if (i11 != 4) {
                return i11 != 5 ? MERGE : EXCLUDE_INTERSECTIONS;
            }
            return INTERSECT;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z10) {
        this.f17788a = str;
        this.f17789b = mergePathsMode;
        this.f17790c = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        if (lottieDrawable.n0(LottieFeatureFlag.MergePathsApi19)) {
            return new l(this);
        }
        f.c("Animation contains merge paths but they are disabled.");
        return null;
    }

    public MergePathsMode b() {
        return this.f17789b;
    }

    public String c() {
        return this.f17788a;
    }

    public boolean d() {
        return this.f17790c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f17789b + '}';
    }
}

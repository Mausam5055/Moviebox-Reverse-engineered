package com.cloud.tmc.miniapp.utils.toast.config;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class ToastType {
    private final String name;

    public static final class ERROR extends ToastType {
        public static final ERROR INSTANCE = new ERROR();

        private ERROR() {
            super("error");
        }
    }

    public static final class LOADING extends ToastType {
        public static final LOADING INSTANCE = new LOADING();

        private LOADING() {
            super("loading");
        }
    }

    public static final class NONE extends ToastType {
        public static final NONE INSTANCE = new NONE();

        private NONE() {
            super("none");
        }
    }

    public static final class SUCCESS extends ToastType {
        public static final SUCCESS INSTANCE = new SUCCESS();

        private SUCCESS() {
            super(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
        }
    }

    public ToastType(String name) {
        Intrinsics.h(name, "name");
        this.name = name;
    }

    public final String getName() {
        return this.name;
    }
}

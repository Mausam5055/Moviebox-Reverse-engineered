package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.cloud.tmc.integration.callback.CommonDialogCallback;
import com.cloud.tmc.integration.callback.CommonDialogOperate;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniapp.dialog.BottomActionSheetDialog$ActionItem;
import com.cloud.tmc.miniapp.dialog.OooOO0O;
import com.cloud.tmc.miniapp.dialog.OooOo;
import com.cloud.tmc.miniapp.dialog.OooOo00;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class ToastImp implements ToastProxy {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO implements CommonDialogOperate {
        public final /* synthetic */ OooOo00 OooO00o;

        public OooO(OooOo00 oooOo00) {
            this.OooO00o = oooOo00;
        }

        @Override // com.cloud.tmc.integration.callback.CommonDialogOperate
        public void dismiss() {
            try {
                if (this.OooO00o.isShowing()) {
                    this.OooO00o.dismiss();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static final class OooO00o {
    }

    public static final class OooO0O0 implements OooOO0O {
        public final /* synthetic */ BridgeCallback OooO00o;

        public OooO0O0(BridgeCallback bridgeCallback) {
            this.OooO00o = bridgeCallback;
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOO0O
        public void OooO00o(int i11, BottomActionSheetDialog$ActionItem data) {
            Intrinsics.h(data, "data");
            TmcLogger.d("ToastImp", "showActionSheet: " + data);
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("tapIndex", Integer.valueOf(i11));
                jsonObject.addProperty("content", data.getText());
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    public static final class OooO0OO implements OooOo {
        public final /* synthetic */ CommonDialogCallback OooO00o;

        public OooO0OO(CommonDialogCallback commonDialogCallback) {
            this.OooO00o = commonDialogCallback;
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOo
        public void OooO00o(View view) {
            Intrinsics.h(view, "view");
            CommonDialogCallback commonDialogCallback = this.OooO00o;
            if (commonDialogCallback != null) {
                commonDialogCallback.onLeftClick();
            }
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOo
        public void OooO0O0(View view) {
            Intrinsics.h(view, "view");
            CommonDialogCallback commonDialogCallback = this.OooO00o;
            if (commonDialogCallback != null) {
                commonDialogCallback.onRightClick();
            }
        }
    }

    public static final class OooO0o implements OooOo {
        public final /* synthetic */ CommonDialogCallback OooO00o;

        public OooO0o(CommonDialogCallback commonDialogCallback) {
            this.OooO00o = commonDialogCallback;
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOo
        public void OooO00o(View view) {
            Intrinsics.h(view, "view");
            CommonDialogCallback commonDialogCallback = this.OooO00o;
            if (commonDialogCallback != null) {
                commonDialogCallback.onLeftClick();
            }
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOo
        public void OooO0O0(View view) {
            Intrinsics.h(view, "view");
            CommonDialogCallback commonDialogCallback = this.OooO00o;
            if (commonDialogCallback != null) {
                commonDialogCallback.onRightClick();
            }
        }
    }

    public static final class OooOO0 implements OooOo {
        public final /* synthetic */ BridgeCallback OooO00o;
        public final /* synthetic */ boolean OooO0O0;
        public final /* synthetic */ OooOo00 OooO0OO;

        public OooOO0(BridgeCallback bridgeCallback, boolean z10, OooOo00 oooOo00) {
            this.OooO00o = bridgeCallback;
            this.OooO0O0 = z10;
            this.OooO0OO = oooOo00;
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOo
        public void OooO00o(View view) {
            Intrinsics.h(view, "view");
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("cancel", Boolean.TRUE);
                jsonObject.addProperty("confirm", Boolean.FALSE);
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooOo
        public void OooO0O0(View view) {
            Intrinsics.h(view, "view");
            BridgeCallback bridgeCallback = this.OooO00o;
            if (bridgeCallback != null) {
                JsonObject jsonObject = new JsonObject();
                boolean z10 = this.OooO0O0;
                OooOo00 oooOo00 = this.OooO0OO;
                jsonObject.addProperty("cancel", Boolean.FALSE);
                jsonObject.addProperty("confirm", Boolean.TRUE);
                if (z10) {
                    TextView textViewOooO0oO = oooOo00.OooO0oO();
                    jsonObject.addProperty("content", textViewOooO0oO != null ? textViewOooO0oO.getText().toString() : null);
                }
                bridgeCallback.sendSuccessResponse(jsonObject);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0149  */
    /* JADX WARN: Failed to calculate best type for var: r0v17 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v17 ??, new type: com.cloud.tmc.miniapp.dialog.OooOO0
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v17 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v17 ??, new type: com.cloud.tmc.miniapp.dialog.OooOO0
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v18 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v18 ??, new type: com.cloud.tmc.miniapp.dialog.OooOO0
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v18 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v18 ??, new type: com.cloud.tmc.miniapp.dialog.OooOO0
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v17 com.cloud.tmc.miniapp.dialog.OooOO0, new type: com.cloud.tmc.miniapp.dialog.OooOO0
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void showActionSheet(JsonArray actions, String showType, String str, String str2, String str3, boolean z10, String str4, String cancelColor, Context context, String str5, BridgeCallback bridgeCallback) {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str6;
        String cancelText = str4;
        Intrinsics.h(actions, "actions");
        Intrinsics.h(showType, "type");
        Intrinsics.h(cancelText, "cancelText");
        Intrinsics.h(cancelColor, "cancelColor");
        Intrinsics.h(context, "context");
        try {
            int size = actions.size();
            if (1 > size || size >= 11) {
                if (bridgeCallback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("errMsg", "Invalid " + size + ", must be between 1 and 10 : AS10003");
                    bridgeCallback.sendFailResponse(jsonObject);
                    return;
                }
                return;
            }
            try {
                String json = TmcGsonUtilsKt.toJson(actions);
                Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.defaultimpl.ToastImp$showActionSheet$data$itemList$1
                }.getType();
                Intrinsics.g(type, "object : TypeToken<ArrayList<String>>() {}.type");
                arrayList = (ArrayList) TmcGsonUtils.fromJson(json, type);
            } catch (Throwable th2) {
                TmcLogger.e("ToastImp", "itemList parse error!", th2);
                arrayList = null;
            }
            if (arrayList != null) {
                arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new BottomActionSheetDialog$ActionItem(null, (String) it.next(), str3, null, false, null, null, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, null));
                }
            } else {
                String json2 = TmcGsonUtilsKt.toJson(actions);
                Type type2 = new TypeToken<ArrayList<BottomActionSheetDialog$ActionItem>>() { // from class: com.cloud.tmc.miniapp.defaultimpl.ToastImp$showActionSheet$data$3
                }.getType();
                Intrinsics.g(type2, "object :\n               …og.ActionItem>>() {}.type");
                Iterable iterable = (Iterable) TmcGsonUtils.fromJson(json2, type2);
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String text = ((BottomActionSheetDialog$ActionItem) it2.next()).getText();
                    if (text == null || text.length() == 0) {
                        throw new IllegalArgumentException("Action's text is null or empty");
                    }
                }
                arrayList2 = (ArrayList) iterable;
            }
            com.cloud.tmc.miniapp.dialog.OooOO0 oooOO0 = new com.cloud.tmc.miniapp.dialog.OooOO0(context);
            if (str2 != null && str2.length() != 0) {
                AppCompatTextView appCompatTextViewOooO0OO = oooOO0.OooO0OO();
                if (appCompatTextViewOooO0OO != null) {
                    ViewExtKt.toVisibleOrGone(appCompatTextViewOooO0OO, !(str == null || str.length() == 0));
                }
                AppCompatTextView appCompatTextViewOooO0OO2 = oooOO0.OooO0OO();
                if (appCompatTextViewOooO0OO2 != null) {
                    appCompatTextViewOooO0OO2.setText(str);
                }
                AppCompatTextView appCompatTextViewOooO0O0 = oooOO0.OooO0O0();
                if (appCompatTextViewOooO0O0 != null) {
                    ViewExtKt.toVisibleOrGone(appCompatTextViewOooO0O0, !(str2 == null || str2.length() == 0));
                }
                AppCompatTextView appCompatTextViewOooO0O1 = oooOO0.OooO0O0();
                if (appCompatTextViewOooO0O1 != null) {
                    appCompatTextViewOooO0O1.setText(str2);
                }
            }
            Intrinsics.h(showType, "showType");
            com.cloud.tmc.miniapp.dialog.OooO0o oooO0o = oooOO0.OooO0oO;
            oooO0o.getClass();
            Intrinsics.h(showType, "showType");
            oooO0o.OooO0O0 = showType;
            oooOO0.OooO0oO.OooO0OO = str5;
            com.cloud.tmc.miniapp.dialog.OooOO0 oooOO0OooO00o = oooOO0.OooO00o(arrayList2);
            if (z10) {
                com.cloud.tmc.miniapp.dialog.OooO0o oooO0o2 = oooOO0OooO00o.OooO0oO;
                if (cancelText == null) {
                    str6 = "Cancel";
                } else {
                    if (str4.length() <= 0) {
                        cancelText = null;
                    }
                    if (cancelText == null) {
                        str6 = "Cancel";
                    } else {
                        str6 = cancelText;
                    }
                }
                oooO0o2.addItem(new BottomActionSheetDialog$ActionItem("Cancel", str6, cancelColor, "#4D191F2B", true, null, "#0F191F2B", 32, null));
            }
            oooOO0OooO00o.OooO0oo = new OooO0O0(bridgeCallback);
            ((com.cloud.tmc.miniapp.dialog.OooOO0) oooOO0OooO00o.setCancelable(r15)).setCanceledOnTouchOutside(true).show();
        } catch (Throwable th3) {
            TmcLogger.e("ToastImp", th3);
            if (bridgeCallback != null) {
                com.cloud.tmc.miniapp.bridge.OooO00o.OooO00o("errMsg", "Parameter error: AS10001", bridgeCallback);
            }
        }
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void showAddHomeSuccessfulToast() {
        ToastUtils.showAddhomeSuccessToast();
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void showCommonDialog(String str, String str2, int i11, Boolean bool, String str3, String str4, String str5, String str6, Context context, CommonDialogCallback commonDialogCallback) {
        TextView textViewOooO0Oo;
        Intrinsics.h(context, "context");
        OooOo00 oooOo00 = new OooOo00(context, true);
        if (str != null && str.length() != 0) {
            oooOo00.OooO0Oo(str);
        }
        if (str2 != null && str2.length() != 0) {
            oooOo00.OooO00o(str2);
        }
        if (i11 > 0) {
            oooOo00.OooO00o(i11);
        } else {
            oooOo00.OooO00o(true);
        }
        if (Intrinsics.c(bool, Boolean.TRUE)) {
            if (str3 != null && str3.length() != 0 && (textViewOooO0Oo = oooOo00.OooO0Oo()) != null) {
                textViewOooO0Oo.setText(oooOo00.OooO00o(str3, 12));
            }
            oooOo00.OooO0O0(true);
        }
        if (str5 != null && str5.length() != 0) {
            oooOo00.OooO0OO(str5);
        }
        if (str4 != null) {
            try {
                if (str4.length() != 0) {
                    oooOo00.OooO0O0(Color.parseColor(str4));
                }
            } catch (Exception e11) {
                TmcLogger.e("[ToastImp]: set common dialog cancel button color error", e11);
                toast("cancel button color error");
            }
        }
        if (str6 != null) {
            try {
                if (str6.length() != 0) {
                    oooOo00.OooO0OO(Color.parseColor(str6));
                }
            } catch (Exception e12) {
                TmcLogger.e("[ToastImp]: set common dialog confirm button color error", e12);
                toast("confirm button color error");
            }
        }
        oooOo00.OooO00o(new OooO0OO(commonDialogCallback)).setCanceledOnTouchOutside(false).show();
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public CommonDialogOperate showCommonDialogWithOperate(String str, String str2, int i11, Boolean bool, String str3, String str4, String str5, String str6, Context context, CommonDialogCallback commonDialogCallback) {
        TextView textViewOooO0Oo;
        Intrinsics.h(context, "context");
        OooOo00 oooOo00 = new OooOo00(context, true);
        if (str != null && str.length() != 0) {
            oooOo00.OooO0Oo(str);
        }
        if (str2 != null && str2.length() != 0) {
            oooOo00.OooO00o(str2);
        }
        if (i11 > 0) {
            oooOo00.OooO00o(i11);
        } else {
            oooOo00.OooO00o(true);
        }
        if (Intrinsics.c(bool, Boolean.TRUE)) {
            if (str3 != null && str3.length() != 0 && (textViewOooO0Oo = oooOo00.OooO0Oo()) != null) {
                textViewOooO0Oo.setText(oooOo00.OooO00o(str3, 12));
            }
            oooOo00.OooO0O0(true);
        }
        if (str5 != null && str5.length() != 0) {
            oooOo00.OooO0OO(str5);
        }
        if (str4 != null) {
            try {
                if (str4.length() != 0) {
                    oooOo00.OooO0O0(Color.parseColor(str4));
                }
            } catch (Exception e11) {
                TmcLogger.e("[ToastImp]: set common dialog cancel button color error", e11);
                toast("cancel button color error");
            }
        }
        if (str6 != null) {
            try {
                if (str6.length() != 0) {
                    oooOo00.OooO0OO(Color.parseColor(str6));
                }
            } catch (Exception e12) {
                TmcLogger.e("[ToastImp]: set common dialog confirm button color error", e12);
                toast("confirm button color error");
            }
        }
        oooOo00.OooO00o(new OooO0o(commonDialogCallback)).setCanceledOnTouchOutside(false).show();
        return new OooO(oooOo00);
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void showModal(String str, String str2, boolean z10, boolean z11, String str3, String str4, String str5, String str6, String str7, Context context, BridgeCallback bridgeCallback) {
        TextView textViewOooO0Oo;
        TextView textViewOooO0oO;
        Intrinsics.h(context, "context");
        OooOo00 oooOo00 = new OooOo00(context, false);
        if (str != null && str.length() != 0) {
            oooOo00.OooO0Oo(str);
        }
        FrameLayout frameLayout = (FrameLayout) oooOo00.OooO0Oo.getValue();
        if (frameLayout != null) {
            ViewExtKt.toVisibleOrGone(frameLayout, !z11);
        }
        FrameLayout frameLayout2 = (FrameLayout) oooOo00.OooO0o0.getValue();
        if (frameLayout2 != null) {
            ViewExtKt.toVisibleOrGone(frameLayout2, z11);
        }
        if (str3 != null && str3.length() != 0 && str3 != null && str3.length() != 0 && (textViewOooO0oO = oooOo00.OooO0oO()) != null) {
            textViewOooO0oO.setHint(str3);
        }
        if (str2 != null && str2.length() != 0) {
            oooOo00.OooO00o(str2);
        }
        if (z10) {
            if (str4 != null && str4.length() != 0 && (textViewOooO0Oo = oooOo00.OooO0Oo()) != null) {
                textViewOooO0Oo.setText(oooOo00.OooO00o(str4, 12));
            }
            oooOo00.OooO0O0(true);
        }
        if (str6 != null && str6.length() != 0) {
            oooOo00.OooO0OO(str6);
        }
        if (str5 != null) {
            try {
                if (str5.length() != 0) {
                    oooOo00.OooO0O0(Color.parseColor(str5));
                }
            } catch (Exception e11) {
                TmcLogger.e("[ToastImp]: set common dialog cancel button color error", e11);
                toast("cancel button color error");
            }
        }
        if (str7 != null) {
            try {
                if (str7.length() != 0) {
                    oooOo00.OooO0OO(Color.parseColor(str7));
                }
            } catch (Exception e12) {
                TmcLogger.e("[ToastImp]: set common dialog confirm button color error", e12);
                toast("confirm button color error");
            }
        }
        oooOo00.OooO00o(new OooOO0(bridgeCallback, z11, oooOo00)).OooO00o(true).setCanceledOnTouchOutside(false).show();
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void toast(int i11) {
        ToastUtils.showToast$default(i11, 0, 0L, false, 14, null);
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void toast(String str) {
        ToastUtils.showToast$default(StringExtKt.orDefault(str, ""), 0, 0L, false, null, 30, null);
    }

    @Override // com.cloud.tmc.integration.proxy.ToastProxy
    public void toast(String str, int i11) {
        ToastUtils.showToast$default(StringExtKt.orDefault(str, ""), i11, 0L, false, null, 28, null);
    }
}

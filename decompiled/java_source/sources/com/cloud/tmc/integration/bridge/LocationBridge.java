package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.location.Address;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.R;
import com.cloud.tmc.integration.callback.CommonDialogCallback;
import com.cloud.tmc.integration.proxy.DialogProxy;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.LocationUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class LocationBridge implements BridgeExtension {
    /* JADX INFO: Access modifiers changed from: private */
    public JsonObject getLocationInfoInner(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("countryCode", str);
        jsonObject.addProperty("latitude", str2);
        jsonObject.addProperty("longitude", str3);
        return jsonObject;
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void getLocation(@BindingNode(App.class) App app, @BindingCallback final BridgeCallback bridgeCallback) {
        if (app == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            bridgeCallback.sendFailResponse();
            return;
        }
        final Context context = appContext.getContext();
        if (context == null) {
            bridgeCallback.sendFailResponse();
        } else {
            PermissionUtils.permissionGroup("LOCATION").callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.LocationBridge.1
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    BridgeCallback bridgeCallback2 = bridgeCallback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "Location Permission denied :LB003").build());
                    }
                    ((DialogProxy) TmcProxy.get(DialogProxy.class)).showLocationPermissionDialog(context);
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    if (!LocationUtils.isLocationEnabled() && !LocationUtils.isGpsEnabled()) {
                        try {
                            ((ToastProxy) TmcProxy.get(ToastProxy.class)).showCommonDialog("", context.getString(R.string.mini_setting_open_gps), 2, Boolean.TRUE, context.getString(android.R.string.cancel), "", context.getString(android.R.string.ok), "", context, new CommonDialogCallback() { // from class: com.cloud.tmc.integration.bridge.LocationBridge.1.1
                                @Override // com.cloud.tmc.integration.callback.CommonDialogCallback
                                public void onLeftClick() {
                                    BridgeCallback bridgeCallback2 = bridgeCallback;
                                    if (bridgeCallback2 != null) {
                                        bridgeCallback2.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "not open GPS:LB001").build());
                                    }
                                }

                                @Override // com.cloud.tmc.integration.callback.CommonDialogCallback
                                public void onRightClick() {
                                    BridgeCallback bridgeCallback2 = bridgeCallback;
                                    if (bridgeCallback2 != null) {
                                        bridgeCallback2.sendFailResponse(JsonObjectUtils.create().addProperty("errMsg", "not open GPS,go setting:LB002").build());
                                    }
                                    LocationUtils.openGpsSettings();
                                }
                            });
                        } catch (Throwable th2) {
                            TmcLogger.e("LocationBridge", "getLocation", th2);
                        }
                    }
                    LocationUtils.getInstance(Utils.getApp()).setAddressCallback(new LocationUtils.AddressCallback() { // from class: com.cloud.tmc.integration.bridge.LocationBridge.1.2
                        @Override // com.cloud.tmc.integration.utils.LocationUtils.AddressCallback
                        public void onGetAddress(Address address) {
                        }

                        @Override // com.cloud.tmc.integration.utils.LocationUtils.AddressCallback
                        public void onGetCountryCode(String str) {
                            JsonObject locationInfoInner = LocationBridge.this.getLocationInfoInner(str, "", "");
                            BridgeCallback bridgeCallback2 = bridgeCallback;
                            if (bridgeCallback2 != null) {
                                bridgeCallback2.sendSuccessResponse(locationInfoInner);
                            }
                            LocationUtils.getInstance(Utils.getApp()).clearAddressCallback();
                        }

                        @Override // com.cloud.tmc.integration.utils.LocationUtils.AddressCallback
                        public void onGetLocation(double d11, double d12) {
                            JsonObject locationInfoInner = LocationBridge.this.getLocationInfoInner("", d11 + "", d12 + "");
                            BridgeCallback bridgeCallback2 = bridgeCallback;
                            if (bridgeCallback2 != null) {
                                bridgeCallback2.sendSuccessResponse(locationInfoInner);
                            }
                            LocationUtils.getInstance(Utils.getApp()).clearAddressCallback();
                        }
                    });
                }
            }).request();
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        LocationUtils.getInstance(Utils.getApp()).clearAddressCallback();
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }
}

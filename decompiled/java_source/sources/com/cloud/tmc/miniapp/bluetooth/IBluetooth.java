package com.cloud.tmc.miniapp.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.miniapp.bluetooth.listener.OooO;
import com.cloud.tmc.miniapp.bluetooth.listener.OooO00o;
import com.cloud.tmc.miniapp.bluetooth.listener.OooO0O0;
import com.cloud.tmc.miniapp.bluetooth.listener.OooO0OO;
import com.cloud.tmc.miniapp.bluetooth.listener.OooO0o;
import com.cloud.tmc.miniapp.bluetooth.listener.OooOO0O;
import com.cloud.tmc.miniapp.bluetooth.listener.OooOOO0;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public interface IBluetooth extends Proxiable {
    long closeBLEConnection(String str);

    void closeBluetoothAdapter();

    long createBLEConnection(String str);

    List<BluetoothGattCharacteristic> getBLEDeviceCharacteristics(String str);

    List<Map<String, String>> getBLEDeviceCharacteristicsMap(String str);

    void getBLEDeviceServices(OooO0o oooO0o);

    long getBluetoothAdapterState(Function2<? super Boolean, ? super Boolean, Unit> function2);

    List<BluetoothDevice> getConnectedBluetoothDevices();

    List<Map<String, String>> getConnectedBluetoothDevicesMap();

    long notifyBLECharacteristicValueChange(String str, String str2, boolean z10);

    boolean offBLECharacteristicValueChange(String str);

    boolean offBLEConnectionStateChange(String str);

    boolean offBluetoothAdapterStateChange(String str);

    boolean offBluetoothDeviceFound(String str);

    void onBLECharacteristicValueChange(String str, OooO0O0 oooO0O0);

    void onBLEConnectionStateChange(String str, OooO0OO oooO0OO);

    void onBluetoothAdapterStateChange(String str, OooOO0O oooOO0O);

    void onBluetoothDeviceFound(String str, OooOOO0 oooOOO0);

    void openBluetoothAdapter(Context context, OooO00o oooO00o);

    long readBLECharacteristicValue(String str, String str2, OooO oooO);

    long startBluetoothDevicesDiscovery(List<String> list, int i11);

    void stopBluetoothDevicesDiscovery();

    long writeBLECharacteristicValue(String str, String str2, byte[] bArr, OooO oooO);
}

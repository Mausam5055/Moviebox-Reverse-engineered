package com.cloud.tmc.kernel.bridge.extension.bind;

import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
public class ParamBinder<T> implements Binder<BindingParam, T> {

    @Nullable
    private JsonObject sourceJSON;

    public ParamBinder(@Nullable JsonObject jsonObject) {
        this.sourceJSON = jsonObject;
    }

    /* JADX WARN: Type inference failed for: r8v13, types: [T, java.util.Map$Entry] */
    /* JADX WARN: Type inference failed for: r9v1, types: [T, java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r9v6, types: [T, java.util.HashMap, java.util.Map] */
    public static <T> T cast(Object obj, ParameterizedType parameterizedType) throws Exception {
        Type rawType = parameterizedType.getRawType();
        if (rawType == List.class || rawType == ArrayList.class) {
            Type type = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof List) {
                List list = (List) obj;
                ?? r11 = (T) new ArrayList(list.size());
                for (Object obj2 : list) {
                    r11.add(type instanceof Class ? cast(obj2, (Class) type) : cast(obj2, type));
                }
                return r11;
            }
        }
        if (rawType == Set.class || rawType == HashSet.class || rawType == TreeSet.class || rawType == Collection.class || rawType == List.class || rawType == ArrayList.class) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                T t11 = (rawType == Set.class || rawType == HashSet.class) ? (T) new HashSet() : rawType == TreeSet.class ? (T) new TreeSet() : (T) new ArrayList();
                for (T t12 : (Iterable) obj) {
                    ((Collection) t11).add(type2 instanceof Class ? cast(t12, (Class) type2) : cast(t12, type2));
                }
                return t11;
            }
        }
        if (rawType == Map.class || rawType == HashMap.class) {
            Type type3 = parameterizedType.getActualTypeArguments()[0];
            Type type4 = parameterizedType.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                ?? r12 = (T) new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    r12.put(cast(entry.getKey(), type3), cast(entry.getValue(), type4));
                }
                return r12;
            }
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length == 1 && (parameterizedType.getActualTypeArguments()[0] instanceof WildcardType)) {
            return (T) cast(obj, rawType);
        }
        if (rawType == Map.Entry.class && (obj instanceof Map)) {
            Map map = (Map) obj;
            if (map.size() == 1) {
                ?? r13 = (T) ((Map.Entry) map.entrySet().iterator().next());
                Object value = r13.getValue();
                if (actualTypeArguments.length == 2 && (value instanceof Map)) {
                    r13.setValue(cast(value, actualTypeArguments[1]));
                }
                return r13;
            }
        }
        throw new Exception("can not cast to : " + parameterizedType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T cast(Object obj, Type type) throws Exception {
        if (obj == 0) {
            return null;
        }
        if (type instanceof Class) {
            return (T) cast(obj, (Class) type);
        }
        if (type instanceof ParameterizedType) {
            return (T) cast(obj, (ParameterizedType) type);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str) || "NULL".equals(str)) {
                return null;
            }
        }
        if (type instanceof TypeVariable) {
            return obj;
        }
        throw new Exception("can not cast to : " + type);
    }

    @Override // com.cloud.tmc.kernel.bridge.extension.bind.Binder
    public T bind(Class<T> cls, BindingParam bindingParam) throws BindException {
        String[] strArrValue = bindingParam.value();
        if (strArrValue == null || strArrValue.length <= 0) {
            strArrValue = bindingParam.name();
        }
        if (strArrValue == null || strArrValue.length <= 0) {
            throw new BindException("bind key is null");
        }
        String str = null;
        try {
            int length = strArrValue.length;
            JsonElement jsonElement = null;
            T tCast = null;
            String str2 = null;
            for (int i11 = 0; i11 < length; i11++) {
                try {
                    str2 = strArrValue[i11];
                    JsonObject jsonObject = this.sourceJSON;
                    jsonElement = jsonObject == null ? null : jsonObject.get(str2);
                    if (jsonElement != null) {
                        if (cls.isPrimitive()) {
                            if (cls == Boolean.TYPE) {
                                tCast = (T) new Gson().fromJson(String.valueOf(jsonElement.getAsBoolean()), (Class) cls);
                            } else if (cls == Integer.TYPE) {
                                tCast = (T) new Gson().fromJson(String.valueOf(jsonElement.getAsInt()), (Class) cls);
                            } else if (cls == Float.TYPE) {
                                tCast = (T) new Gson().fromJson(String.valueOf(jsonElement.getAsFloat()), (Class) cls);
                            } else if (cls == Double.TYPE) {
                                tCast = (T) new Gson().fromJson(String.valueOf(jsonElement.getAsDouble()), (Class) cls);
                            } else if (cls == Long.TYPE) {
                                tCast = (T) new Gson().fromJson(String.valueOf(jsonElement.getAsLong()), (Class) cls);
                            }
                        } else if (cls == String.class) {
                            tCast = cls.cast(jsonElement.getAsString());
                        } else if (cls == Boolean.class) {
                            tCast = cls.cast(Boolean.valueOf(jsonElement.getAsBoolean()));
                        } else if (cls == Integer.class) {
                            tCast = cls.cast(Integer.valueOf(jsonElement.getAsInt()));
                        } else if (cls == Float.class) {
                            tCast = cls.cast(Float.valueOf(jsonElement.getAsFloat()));
                        } else if (cls == Double.class) {
                            tCast = cls.cast(Double.valueOf(jsonElement.getAsDouble()));
                        } else if (cls == Long.class) {
                            tCast = cls.cast(Long.valueOf(jsonElement.getAsLong()));
                        } else if (cls == JsonObject.class) {
                            tCast = cls.cast(jsonElement.getAsJsonObject());
                        } else if (cls == JsonArray.class) {
                            tCast = cls.cast(jsonElement.getAsJsonArray());
                        }
                    }
                    if (tCast != null) {
                        return tCast;
                    }
                } catch (Exception e11) {
                    e = e11;
                    str = str2;
                    TmcLogger.e("TmcKernel", "Binding targetType: " + cls + " with: " + this.sourceJSON + " key: " + str + " exception!", e);
                    throw new BindException(e.getMessage());
                }
            }
            if (jsonElement != null) {
                return tCast;
            }
            if (bindingParam.required()) {
                throw new RequiredParamNotFoundException(strArrValue[0] + " param is missing!");
            }
            if (cls.isPrimitive()) {
                if (cls == Boolean.TYPE) {
                    return (T) new Gson().fromJson(String.valueOf(bindingParam.booleanDefault()), (Class) cls);
                }
                if (cls == Integer.TYPE) {
                    return (T) new Gson().fromJson(String.valueOf(bindingParam.intDefault()), (Class) cls);
                }
                if (cls == Float.TYPE) {
                    return (T) new Gson().fromJson(String.valueOf(bindingParam.floatDefault()), (Class) cls);
                }
                if (cls == Double.TYPE) {
                    return (T) new Gson().fromJson(String.valueOf(bindingParam.doubleDefault()), (Class) cls);
                }
                return cls == Long.TYPE ? (T) new Gson().fromJson(String.valueOf(bindingParam.longDefault()), (Class) cls) : tCast;
            }
            if (cls == String.class) {
                return cls.cast(bindingParam.stringDefault());
            }
            if (cls == Boolean.class) {
                return cls.cast(Boolean.valueOf(bindingParam.booleanDefault()));
            }
            if (cls == Integer.class) {
                return cls.cast(Integer.valueOf(bindingParam.intDefault()));
            }
            if (cls == Float.class) {
                return cls.cast(Float.valueOf(bindingParam.floatDefault()));
            }
            if (cls == Double.class) {
                return cls.cast(Double.valueOf(bindingParam.doubleDefault()));
            }
            return cls == Long.class ? cls.cast(Long.valueOf(bindingParam.longDefault())) : tCast;
        } catch (Exception e12) {
            e = e12;
        }
    }
}

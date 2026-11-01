package j5;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    private k5.b a(String[] strArr, String[] strArr2, float f11, k5.d dVar) {
        k5.b bVar = new k5.b();
        bVar.f66653d = strArr[9].replaceAll("\\{.*?\\}", "").replace("\n", "<br />").replace("\\N", "<br />");
        for (int i11 = 0; i11 < strArr2.length; i11++) {
            if (strArr2[i11].trim().equalsIgnoreCase("Style")) {
                k5.a aVar = (k5.a) dVar.f66661g.get(strArr[i11].trim());
                if (aVar != null) {
                    bVar.f66650a = aVar;
                } else {
                    dVar.f66664j += "undefined style: " + strArr[i11].trim() + "\n\n";
                }
            } else if (strArr2[i11].trim().equalsIgnoreCase("Start")) {
                try {
                    bVar.f66651b = new k5.c("h:mm:ss.cs", strArr[i11].trim());
                } catch (Throwable unused) {
                    bVar.f66651b = new k5.c("", "");
                }
            } else if (strArr2[i11].trim().equalsIgnoreCase("End")) {
                try {
                    bVar.f66652c = new k5.c("h:mm:ss.cs", strArr[i11].trim());
                } catch (Throwable unused2) {
                    bVar.f66652c = new k5.c("", "");
                }
            }
        }
        if (f11 != 100.0f && f11 > 0.0f) {
            k5.c cVar = bVar.f66651b;
            float f12 = f11 / 100.0f;
            cVar.f66654a = (int) (cVar.f66654a / f12);
            k5.c cVar2 = bVar.f66652c;
            cVar2.f66654a = (int) (cVar2.f66654a / f12);
        }
        return bVar;
    }

    private k5.a c(String[] strArr, String[] strArr2, int i11, boolean z10, String str) {
        String str2;
        String[] strArr3 = strArr;
        String[] strArr4 = strArr2;
        k5.a aVar = new k5.a(k5.a.a());
        if (strArr3.length == strArr4.length) {
            int i12 = 0;
            String str3 = str;
            while (i12 < strArr4.length) {
                if (strArr4[i12].trim().equalsIgnoreCase("Name")) {
                    aVar.f66641a = strArr3[i12].trim();
                } else if (strArr4[i12].trim().equalsIgnoreCase("Fontname")) {
                    aVar.f66642b = strArr3[i12].trim();
                } else if (strArr4[i12].trim().equalsIgnoreCase("Fontsize")) {
                    aVar.f66643c = strArr3[i12].trim();
                } else if (strArr4[i12].trim().equalsIgnoreCase("PrimaryColour")) {
                    String strTrim = strArr3[i12].trim();
                    if (z10) {
                        if (strTrim.startsWith("&H")) {
                            aVar.f66644d = k5.a.b("&HAABBGGRR", strTrim);
                        } else {
                            aVar.f66644d = k5.a.b("decimalCodedAABBGGRR", strTrim);
                        }
                    } else if (strTrim.startsWith("&H")) {
                        aVar.f66644d = k5.a.b("&HBBGGRR", strTrim);
                    } else {
                        aVar.f66644d = k5.a.b("decimalCodedBBGGRR", strTrim);
                    }
                } else if (strArr4[i12].trim().equalsIgnoreCase("BackColour")) {
                    String strTrim2 = strArr3[i12].trim();
                    if (z10) {
                        if (strTrim2.startsWith("&H")) {
                            aVar.f66645e = k5.a.b("&HAABBGGRR", strTrim2);
                        } else {
                            aVar.f66645e = k5.a.b("decimalCodedAABBGGRR", strTrim2);
                        }
                    } else if (strTrim2.startsWith("&H")) {
                        aVar.f66645e = k5.a.b("&HBBGGRR", strTrim2);
                    } else {
                        aVar.f66645e = k5.a.b("decimalCodedBBGGRR", strTrim2);
                    }
                } else if (strArr4[i12].trim().equalsIgnoreCase("Bold")) {
                    aVar.f66648h = Boolean.parseBoolean(strArr3[i12].trim());
                } else if (strArr4[i12].trim().equalsIgnoreCase("Italic")) {
                    aVar.f66647g = Boolean.parseBoolean(strArr3[i12].trim());
                } else if (strArr4[i12].trim().equalsIgnoreCase("Underline")) {
                    aVar.f66649i = Boolean.parseBoolean(strArr3[i12].trim());
                } else if (strArr4[i12].trim().equalsIgnoreCase("Alignment")) {
                    int i13 = Integer.parseInt(strArr3[i12].trim());
                    if (z10) {
                        switch (i13) {
                            case 1:
                                aVar.f66646f = "bottom-left";
                                continue;
                            case 2:
                                aVar.f66646f = "bottom-center";
                                continue;
                            case 3:
                                aVar.f66646f = "bottom-right";
                                continue;
                            case 4:
                                aVar.f66646f = "mid-left";
                                continue;
                            case 5:
                                aVar.f66646f = "mid-center";
                                continue;
                            case 6:
                                aVar.f66646f = "mid-right";
                                continue;
                            case 7:
                                aVar.f66646f = "top-left";
                                continue;
                            case 8:
                                aVar.f66646f = "top-center";
                                continue;
                            case 9:
                                aVar.f66646f = "top-right";
                                continue;
                            default:
                                str2 = str3 + "undefined alignment for style at line " + i11 + "\n\n";
                                break;
                        }
                        str3 = str2;
                    } else {
                        switch (i13) {
                            case 1:
                                aVar.f66646f = "mid-left";
                                continue;
                            case 2:
                                aVar.f66646f = "mid-center";
                                continue;
                            case 3:
                                aVar.f66646f = "mid-right";
                                continue;
                            case 4:
                            case 8:
                            default:
                                str2 = str3 + "undefined alignment for style at line " + i11 + "\n\n";
                                break;
                            case 5:
                                aVar.f66646f = "top-left";
                                continue;
                            case 6:
                                aVar.f66646f = "top-center";
                                continue;
                            case 7:
                                aVar.f66646f = "top-right";
                                continue;
                            case 9:
                                aVar.f66646f = "bottom-left";
                                continue;
                            case 10:
                                aVar.f66646f = "bottom-center";
                                continue;
                            case 11:
                                aVar.f66646f = "bottom-right";
                                continue;
                        }
                        str3 = str2;
                    }
                }
                i12++;
                strArr3 = strArr;
                strArr4 = strArr2;
            }
        }
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0314  */
    public k5.d b(String str, String str2, InputStream inputStream) throws IOException {
        String strTrim;
        k5.d dVar = new k5.d();
        dVar.f66659e = str;
        new k5.b();
        BufferedReader bufferedReader = new BufferedReader(TextUtils.isEmpty(str2) ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str2));
        try {
            String line = bufferedReader.readLine();
            float f11 = 100.0f;
            boolean z10 = false;
            int i11 = 1;
            while (line != null) {
                String strTrim2 = line.trim();
                if (!strTrim2.startsWith("[")) {
                    line = bufferedReader.readLine();
                    i11++;
                } else if (strTrim2.equalsIgnoreCase("[Script info]")) {
                    i11++;
                    line = bufferedReader.readLine().trim();
                    while (!line.startsWith("[")) {
                        if (line.startsWith("Title:")) {
                            dVar.f66655a = line.split(":")[1].trim();
                        } else if (line.startsWith("Original Script:")) {
                            dVar.f66658d = line.split(":")[1].trim();
                        } else if (line.startsWith("Script Type:")) {
                            if (line.split(":")[1].trim().equalsIgnoreCase("v4.00+")) {
                                z10 = true;
                            } else if (!line.split(":")[1].trim().equalsIgnoreCase("v4.00")) {
                                dVar.f66664j += "Script version is older than 4.00, it may produce parsing errors.";
                            }
                        } else if (line.startsWith("Timer:")) {
                            f11 = Float.parseFloat(line.split(":")[1].trim().replace(',', '.'));
                        }
                        i11++;
                        line = bufferedReader.readLine().trim();
                    }
                } else {
                    if (!strTrim2.equalsIgnoreCase("[v4 Styles]")) {
                        try {
                            if (!strTrim2.equalsIgnoreCase("[v4 Styles+]") && !strTrim2.equalsIgnoreCase("[v4+ Styles]")) {
                                if (strTrim2.trim().equalsIgnoreCase("[Events]")) {
                                    int i12 = i11 + 1;
                                    String strTrim3 = bufferedReader.readLine().trim();
                                    dVar.f66664j += "Only dialogue events are considered, all other events are ignored.\n\n";
                                    if (!strTrim3.startsWith("Format:")) {
                                        dVar.f66664j += "Format: (format definition) expected at line " + strTrim3 + " for the events section\n\n";
                                        while (!strTrim3.startsWith("Format:")) {
                                            i12++;
                                            strTrim3 = bufferedReader.readLine().trim();
                                        }
                                    }
                                    String[] strArrSplit = strTrim3.split(":")[1].trim().split(",");
                                    i11 = i12 + 1;
                                    strTrim = bufferedReader.readLine().trim();
                                    while (!strTrim.startsWith("[")) {
                                        if (strTrim.startsWith("Dialogue:")) {
                                            k5.b bVarA = a(strTrim.split(":", 2)[1].trim().split(",", 10), strArrSplit, f11, dVar);
                                            int i13 = bVarA.f66651b.f66654a;
                                            while (dVar.f66663i.containsKey(Integer.valueOf(i13))) {
                                                i13++;
                                            }
                                            dVar.f66663i.put(Integer.valueOf(i13), bVarA);
                                        }
                                        i11++;
                                        strTrim = bufferedReader.readLine().trim();
                                    }
                                    line = strTrim;
                                } else if (strTrim2.trim().equalsIgnoreCase("[Fonts]") || strTrim2.trim().equalsIgnoreCase("[Graphics]")) {
                                    dVar.f66664j += "The section " + strTrim2.trim() + " is not supported for conversion, all information there will be lost.\n\n";
                                    line = bufferedReader.readLine().trim();
                                } else {
                                    dVar.f66664j += "Unrecognized section: " + strTrim2.trim() + " all information there is ignored.";
                                    line = bufferedReader.readLine().trim();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                dVar.f66664j += "unexpected end of file, maybe last caption is not complete.\n\n";
                                th.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                dVar.f66667m = true;
                                return dVar;
                            } catch (Throwable th3) {
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                throw th3;
                            }
                        }
                    }
                    if (strTrim2.contains("+") && !z10) {
                        dVar.f66664j += "ScriptType should be set to v4:00+ in the [Script Info] section.\n\n";
                        z10 = true;
                    }
                    int i14 = i11 + 1;
                    String strTrim4 = bufferedReader.readLine().trim();
                    if (!strTrim4.startsWith("Format:")) {
                        dVar.f66664j += "Format: (format definition) expected at line " + strTrim4 + " for the styles section\n\n";
                        while (!strTrim4.startsWith("Format:")) {
                            i14++;
                            strTrim4 = bufferedReader.readLine().trim();
                        }
                    }
                    String[] strArrSplit2 = strTrim4.split(":")[1].trim().split(",");
                    i11 = i14 + 1;
                    strTrim = bufferedReader.readLine().trim();
                    while (!strTrim.startsWith("[")) {
                        if (strTrim.startsWith("Style:")) {
                            k5.a aVarC = c(strTrim.split(":")[1].trim().split(","), strArrSplit2, i11, z10, dVar.f66664j);
                            dVar.f66661g.put(aVarC.f66641a, aVarC);
                        }
                        i11++;
                        strTrim = bufferedReader.readLine().trim();
                    }
                    line = strTrim;
                }
            }
            dVar.a();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th4) {
            th = th4;
        }
        dVar.f66667m = true;
        return dVar;
    }
}

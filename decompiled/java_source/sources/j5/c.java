package j5;

import com.avery.subtitle.exception.FatalParsingException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private void a(k5.d dVar) {
        k5.a aVar = new k5.a("white");
        aVar.f66644d = k5.a.b("name", "white");
        dVar.f66661g.put(aVar.f66641a, aVar);
        k5.a aVar2 = new k5.a("whiteU", aVar);
        aVar2.f66649i = true;
        dVar.f66661g.put(aVar2.f66641a, aVar2);
        k5.a aVar3 = new k5.a("whiteUI", aVar2);
        aVar3.f66647g = true;
        dVar.f66661g.put(aVar3.f66641a, aVar3);
        k5.a aVar4 = new k5.a("whiteI", aVar3);
        aVar4.f66649i = false;
        dVar.f66661g.put(aVar4.f66641a, aVar4);
        k5.a aVar5 = new k5.a("green");
        aVar5.f66644d = k5.a.b("name", "green");
        dVar.f66661g.put(aVar5.f66641a, aVar5);
        k5.a aVar6 = new k5.a("greenU", aVar5);
        aVar6.f66649i = true;
        dVar.f66661g.put(aVar6.f66641a, aVar6);
        k5.a aVar7 = new k5.a("greenUI", aVar6);
        aVar7.f66647g = true;
        dVar.f66661g.put(aVar7.f66641a, aVar7);
        k5.a aVar8 = new k5.a("greenI", aVar7);
        aVar8.f66649i = false;
        dVar.f66661g.put(aVar8.f66641a, aVar8);
        k5.a aVar9 = new k5.a("blue");
        aVar9.f66644d = k5.a.b("name", "blue");
        dVar.f66661g.put(aVar9.f66641a, aVar9);
        k5.a aVar10 = new k5.a("blueU", aVar9);
        aVar10.f66649i = true;
        dVar.f66661g.put(aVar10.f66641a, aVar10);
        k5.a aVar11 = new k5.a("blueUI", aVar10);
        aVar11.f66647g = true;
        dVar.f66661g.put(aVar11.f66641a, aVar11);
        k5.a aVar12 = new k5.a("blueI", aVar11);
        aVar12.f66649i = false;
        dVar.f66661g.put(aVar12.f66641a, aVar12);
        k5.a aVar13 = new k5.a("cyan");
        aVar13.f66644d = k5.a.b("name", "cyan");
        dVar.f66661g.put(aVar13.f66641a, aVar13);
        k5.a aVar14 = new k5.a("cyanU", aVar13);
        aVar14.f66649i = true;
        dVar.f66661g.put(aVar14.f66641a, aVar14);
        k5.a aVar15 = new k5.a("cyanUI", aVar14);
        aVar15.f66647g = true;
        dVar.f66661g.put(aVar15.f66641a, aVar15);
        k5.a aVar16 = new k5.a("cyanI", aVar15);
        aVar16.f66649i = false;
        dVar.f66661g.put(aVar16.f66641a, aVar16);
        k5.a aVar17 = new k5.a("red");
        aVar17.f66644d = k5.a.b("name", "red");
        dVar.f66661g.put(aVar17.f66641a, aVar17);
        k5.a aVar18 = new k5.a("redU", aVar17);
        aVar18.f66649i = true;
        dVar.f66661g.put(aVar18.f66641a, aVar18);
        k5.a aVar19 = new k5.a("redUI", aVar18);
        aVar19.f66647g = true;
        dVar.f66661g.put(aVar19.f66641a, aVar19);
        k5.a aVar20 = new k5.a("redI", aVar19);
        aVar20.f66649i = false;
        dVar.f66661g.put(aVar20.f66641a, aVar20);
        k5.a aVar21 = new k5.a("yellow");
        aVar21.f66644d = k5.a.b("name", "yellow");
        dVar.f66661g.put(aVar21.f66641a, aVar21);
        k5.a aVar22 = new k5.a("yellowU", aVar21);
        aVar22.f66649i = true;
        dVar.f66661g.put(aVar22.f66641a, aVar22);
        k5.a aVar23 = new k5.a("yellowUI", aVar22);
        aVar23.f66647g = true;
        dVar.f66661g.put(aVar23.f66641a, aVar23);
        k5.a aVar24 = new k5.a("yellowI", aVar23);
        aVar24.f66649i = false;
        dVar.f66661g.put(aVar24.f66641a, aVar24);
        k5.a aVar25 = new k5.a("magenta");
        aVar25.f66644d = k5.a.b("name", "magenta");
        dVar.f66661g.put(aVar25.f66641a, aVar25);
        k5.a aVar26 = new k5.a("magentaU", aVar25);
        aVar26.f66649i = true;
        dVar.f66661g.put(aVar26.f66641a, aVar26);
        k5.a aVar27 = new k5.a("magentaUI", aVar26);
        aVar27.f66647g = true;
        dVar.f66661g.put(aVar27.f66641a, aVar27);
        k5.a aVar28 = new k5.a("magentaI", aVar27);
        aVar28.f66649i = false;
        dVar.f66661g.put(aVar28.f66641a, aVar28);
        k5.a aVar29 = new k5.a("black");
        aVar29.f66644d = k5.a.b("name", "black");
        dVar.f66661g.put(aVar29.f66641a, aVar29);
        k5.a aVar30 = new k5.a("blackU", aVar29);
        aVar30.f66649i = true;
        dVar.f66661g.put(aVar30.f66641a, aVar30);
        k5.a aVar31 = new k5.a("blackUI", aVar30);
        aVar31.f66647g = true;
        dVar.f66661g.put(aVar31.f66641a, aVar31);
        k5.a aVar32 = new k5.a("blackI", aVar31);
        aVar32.f66649i = false;
        dVar.f66661g.put(aVar32.f66641a, aVar32);
    }

    private void c(k5.b bVar, byte[] bArr, int i11, k5.d dVar) {
        String str;
        k5.a aVar;
        String str2 = "white";
        String str3 = "";
        int length = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (length < bArr.length) {
            byte b11 = bArr[length];
            if (b11 >= 0) {
                if (b11 < 32) {
                    int i12 = length + 1;
                    if (i12 < bArr.length && b11 == bArr[i12]) {
                        length = i12;
                    }
                    switch (bArr[length]) {
                        case 0:
                            str2 = "black";
                            break;
                        case 1:
                            str2 = "red";
                            break;
                        case 2:
                            str2 = "green";
                            break;
                        case 3:
                            str2 = "yellow";
                            break;
                        case 4:
                            str2 = "blue";
                            break;
                        case 5:
                            str2 = "magenta";
                            break;
                        case 6:
                            str2 = "cyan";
                            break;
                        case 7:
                            str2 = "white";
                            break;
                    }
                } else {
                    str3 = str3 + new String(new byte[]{b11});
                }
                length++;
            } else if (b11 <= -113) {
                int i13 = length + 1;
                if (i13 < bArr.length && b11 == bArr[i13]) {
                    length = i13;
                }
                byte b12 = bArr[length];
                if (b12 == -118) {
                    bVar.f66653d += str3 + "<br />";
                } else if (b12 != -113) {
                    switch (b12) {
                        case -128:
                            z11 = true;
                            break;
                        case -127:
                            z11 = false;
                            break;
                        case -126:
                            z10 = true;
                            break;
                        case -125:
                            z10 = false;
                            break;
                    }
                } else {
                    bVar.f66653d += str3;
                    if (z10) {
                        str2 = str2 + "U";
                    }
                    if (z11) {
                        str2 = str2 + "I";
                    }
                    k5.a aVar2 = (k5.a) dVar.f66661g.get(str2);
                    if (i11 == 1) {
                        str = str2 + "L";
                        if (dVar.f66661g.get(str) == null) {
                            aVar = new k5.a(str, aVar2);
                            aVar.f66646f = "bottom-left";
                            dVar.f66661g.put(str, aVar);
                            str2 = str;
                            aVar2 = aVar;
                        } else {
                            aVar2 = (k5.a) dVar.f66661g.get(str);
                            str2 = str;
                        }
                    } else if (i11 == 3) {
                        str = str2 + "R";
                        if (dVar.f66661g.get(str) == null) {
                            aVar = new k5.a(str, aVar2);
                            aVar.f66646f = "bottom-rigth";
                            dVar.f66661g.put(str, aVar);
                            str2 = str;
                            aVar2 = aVar;
                        } else {
                            aVar2 = (k5.a) dVar.f66661g.get(str);
                            str2 = str;
                        }
                    }
                    bVar.f66650a = aVar2;
                    int i14 = bVar.f66651b.f66654a;
                    while (dVar.f66663i.containsKey(Integer.valueOf(i14))) {
                        i14++;
                    }
                    dVar.f66663i.put(Integer.valueOf(i14), bVar);
                    length = bArr.length;
                }
                str3 = "";
            }
            length++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0264 A[Catch: Exception -> 0x0114, TryCatch #0 {Exception -> 0x0114, blocks: (B:3:0x0020, B:5:0x0029, B:10:0x00fe, B:16:0x0132, B:18:0x013a, B:20:0x0163, B:21:0x0168, B:23:0x0173, B:24:0x0190, B:28:0x0199, B:30:0x0202, B:32:0x0212, B:38:0x0264, B:39:0x0265, B:34:0x021e, B:41:0x0279, B:42:0x029e, B:13:0x0117, B:45:0x02a8, B:46:0x02af), top: B:49:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0265 A[SYNTHETIC] */
    public k5.d b(String str, String str2, InputStream inputStream) throws FatalParsingException {
        int i11;
        String str3;
        int i12;
        String str4;
        String str5;
        InputStream inputStream2 = inputStream;
        String str6 = "";
        k5.d dVar = new k5.d();
        dVar.f66659e = str;
        byte[] bArr = new byte[1024];
        byte[] bArr2 = new byte[128];
        try {
            a(dVar);
            if (inputStream2.read(bArr) < 1024) {
                throw new FatalParsingException("The file must contain at least a GSI block");
            }
            int i13 = Integer.parseInt(new String(new byte[]{bArr[6], bArr[7]}));
            int i14 = Integer.parseInt(new String(new byte[]{bArr[12], bArr[13]}));
            byte[] bArr3 = new byte[32];
            System.arraycopy(bArr, 16, bArr3, 0, 32);
            String str7 = new String(bArr3);
            byte[] bArr4 = new byte[32];
            System.arraycopy(bArr, 48, bArr4, 0, 32);
            String str8 = new String(bArr4);
            String str9 = "h:m:s:f/fps";
            int i15 = Integer.parseInt(new String(new byte[]{bArr[238], bArr[239], bArr[240], bArr[241], bArr[242]}));
            String str10 = "/";
            int i16 = i13;
            int i17 = Integer.parseInt(new String(new byte[]{bArr[243], bArr[244], bArr[245], bArr[246], bArr[247]}));
            dVar.f66655a = (str7.trim() + " " + str8.trim()).trim();
            if (i14 > 4 || i14 < 0) {
                dVar.f66664j += "Invalid Character Code table number, corrupt data? will try to parse anyways assuming it is latin.\n\n";
            } else if (i14 != 0) {
                dVar.f66664j += "Only latin alphabet supported for import from STL, other languages may produce unexpected results.\n\n";
            }
            k5.b bVar = null;
            int i18 = 0;
            boolean z10 = false;
            int i19 = 0;
            while (i18 < i15) {
                if (inputStream2.read(bArr2) < 128) {
                    dVar.f66664j += "Unexpected end of file, " + i18 + " blocks read, expecting " + i15 + " blocks in total.\n\n";
                    break;
                }
                if (!z10) {
                    bVar = new k5.b();
                }
                if (bArr2[1] + (bArr2[2] * 256) != i19) {
                    dVar.f66664j += "Unexpected subtitle number at TTI block " + i18 + ". Parsing proceeds...\n\n";
                }
                boolean z11 = bArr2[3] != -1;
                String str11 = str6 + ((int) bArr2[5]) + ":" + ((int) bArr2[6]) + ":" + ((int) bArr2[7]) + ":" + ((int) bArr2[8]);
                String str12 = str6 + ((int) bArr2[9]) + ":" + ((int) bArr2[10]) + ":" + ((int) bArr2[11]) + ":" + ((int) bArr2[12]);
                byte b11 = bArr2[14];
                if (bArr2[15] == 0) {
                    byte[] bArr5 = new byte[112];
                    i11 = i15;
                    str3 = str6;
                    System.arraycopy(bArr2, 16, bArr5, 0, 112);
                    if (z11) {
                        c(bVar, bArr5, b11, dVar);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str11);
                        str4 = str10;
                        sb2.append(str4);
                        i12 = i16;
                        sb2.append(i12);
                        str5 = str9;
                        bVar.f66651b = new k5.c(str5, sb2.toString());
                        bVar.f66652c = new k5.c(str5, str12 + str4 + i12);
                        c(bVar, bArr5, b11, dVar);
                    }
                    if (!z11) {
                        i19++;
                    }
                    i18++;
                    inputStream2 = inputStream;
                    str9 = str5;
                    str10 = str4;
                    z10 = z11;
                    i15 = i11;
                    bArr2 = bArr2;
                    i16 = i12;
                    str6 = str3;
                } else {
                    i11 = i15;
                    str3 = str6;
                }
                i12 = i16;
                str4 = str10;
                str5 = str9;
                if (!z11) {
                    i19++;
                }
                i18++;
                inputStream2 = inputStream;
                str9 = str5;
                str10 = str4;
                z10 = z11;
                i15 = i11;
                bArr2 = bArr2;
                i16 = i12;
                str6 = str3;
            }
            if (i19 != i17) {
                dVar.f66664j += "Number of parsed subtitles (" + i19 + ") different from expected number of subtitles (" + i17 + ").\n\n";
            }
            inputStream.close();
            dVar.a();
            dVar.f66667m = true;
            return dVar;
        } catch (Exception e11) {
            e11.printStackTrace();
            throw new FatalParsingException("Format error in the file, migth be due to corrupt data.\n" + e11.getMessage());
        }
    }
}

.class final Lorg/brotli/dec/k;
.super Ljava/lang/Object;


# static fields
.field static final d:[Lorg/brotli/dec/k;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 124

    new-instance v0, Lorg/brotli/dec/k;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lorg/brotli/dec/k;

    const-string v4, " "

    invoke-direct {v3, v1, v2, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    invoke-direct {v5, v4, v2, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    const/16 v7, 0xc

    invoke-direct {v6, v1, v7, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    const/16 v9, 0xa

    invoke-direct {v8, v1, v9, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lorg/brotli/dec/k;

    const-string v11, " the "

    invoke-direct {v10, v1, v2, v11}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/brotli/dec/k;

    invoke-direct {v12, v4, v2, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lorg/brotli/dec/k;

    const-string v14, "s "

    invoke-direct {v13, v14, v2, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lorg/brotli/dec/k;

    const-string v15, " of "

    invoke-direct {v14, v1, v2, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    invoke-direct {v7, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v16, v7

    const-string v7, " and "

    invoke-direct {v9, v1, v2, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    const/16 v2, 0xd

    invoke-direct {v7, v1, v2, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lorg/brotli/dec/k;

    move-object/from16 v17, v7

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v18, v2

    const-string v2, ", "

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v20, v7

    new-instance v7, Lorg/brotli/dec/k;

    invoke-direct {v7, v1, v9, v2}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v21, v7

    const/16 v7, 0xa

    invoke-direct {v9, v4, v7, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v22, v9

    const-string v9, " in "

    move-object/from16 v23, v14

    const/4 v14, 0x0

    invoke-direct {v7, v1, v14, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v24, v7

    const-string v7, " to "

    invoke-direct {v9, v1, v14, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v25, v9

    const-string v9, "e "

    invoke-direct {v7, v9, v14, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v26, v7

    const-string v7, "\""

    invoke-direct {v9, v1, v14, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v27, v9

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v28, v13

    const-string v13, "."

    invoke-direct {v9, v1, v14, v13}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v29, v9

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v30, v12

    const-string v12, "\">"

    invoke-direct {v9, v1, v14, v12}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v31, v9

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v32, v10

    const-string v10, "\n"

    invoke-direct {v9, v1, v14, v10}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lorg/brotli/dec/k;

    const/4 v14, 0x3

    invoke-direct {v10, v1, v14, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lorg/brotli/dec/k;

    move-object/from16 v33, v10

    const-string v10, "]"

    move-object/from16 v34, v9

    const/4 v9, 0x0

    invoke-direct {v14, v1, v9, v10}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lorg/brotli/dec/k;

    move-object/from16 v35, v14

    const-string v14, " for "

    invoke-direct {v10, v1, v9, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lorg/brotli/dec/k;

    const/16 v9, 0xe

    invoke-direct {v14, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v36, v14

    const/4 v14, 0x2

    invoke-direct {v9, v1, v14, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lorg/brotli/dec/k;

    move-object/from16 v37, v9

    const-string v9, " a "

    move-object/from16 v38, v10

    const/4 v10, 0x0

    invoke-direct {v14, v1, v10, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v39, v14

    const-string v14, " that "

    invoke-direct {v9, v1, v10, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lorg/brotli/dec/k;

    const/16 v10, 0xa

    invoke-direct {v14, v4, v10, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lorg/brotli/dec/k;

    move-object/from16 v40, v14

    const-string v14, ". "

    move-object/from16 v41, v9

    const/4 v9, 0x0

    invoke-direct {v10, v1, v9, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v42, v10

    new-instance v10, Lorg/brotli/dec/k;

    invoke-direct {v10, v13, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v43, v10

    new-instance v10, Lorg/brotli/dec/k;

    invoke-direct {v10, v4, v9, v2}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v44, v10

    const/16 v10, 0xf

    invoke-direct {v9, v1, v10, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lorg/brotli/dec/k;

    move-object/from16 v45, v9

    const-string v9, " with "

    move-object/from16 v46, v8

    const/4 v8, 0x0

    invoke-direct {v10, v1, v8, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v47, v10

    const-string v10, "\'"

    invoke-direct {v9, v1, v8, v10}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v48, v9

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v49, v6

    const-string v6, " from "

    invoke-direct {v9, v1, v8, v6}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v50, v9

    const-string v9, " by "

    invoke-direct {v6, v1, v8, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    const/16 v8, 0x10

    invoke-direct {v9, v1, v8, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    move-object/from16 v51, v9

    const/16 v9, 0x11

    invoke-direct {v8, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v52, v8

    const/4 v8, 0x0

    invoke-direct {v9, v11, v8, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    move-object/from16 v53, v9

    const/4 v9, 0x4

    invoke-direct {v8, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v54, v8

    const-string v8, ". The "

    move-object/from16 v55, v6

    const/4 v6, 0x0

    invoke-direct {v9, v1, v6, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    const/16 v6, 0xb

    invoke-direct {v8, v1, v6, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v56, v8

    const-string v8, " on "

    move-object/from16 v57, v9

    const/4 v9, 0x0

    invoke-direct {v6, v1, v9, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    move-object/from16 v58, v6

    const-string v6, " as "

    invoke-direct {v8, v1, v9, v6}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v59, v8

    const-string v8, " is "

    invoke-direct {v6, v1, v9, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    const/4 v9, 0x7

    invoke-direct {v8, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v60, v8

    const-string v8, "ing "

    move-object/from16 v61, v6

    const/4 v6, 0x1

    invoke-direct {v9, v1, v6, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    const-string v8, "\n\t"

    move-object/from16 v62, v9

    const/4 v9, 0x0

    invoke-direct {v6, v1, v9, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    move-object/from16 v63, v6

    const-string v6, ":"

    invoke-direct {v8, v1, v9, v6}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    invoke-direct {v6, v4, v9, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v64, v6

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v65, v8

    const-string v8, "ed "

    invoke-direct {v6, v1, v9, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    const/16 v9, 0x14

    invoke-direct {v8, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v66, v8

    const/16 v8, 0x12

    invoke-direct {v9, v1, v8, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    move-object/from16 v67, v9

    const/4 v9, 0x6

    invoke-direct {v8, v1, v9, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v68, v8

    const-string v8, "("

    move-object/from16 v69, v6

    const/4 v6, 0x0

    invoke-direct {v9, v1, v6, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v70, v9

    const/16 v9, 0xa

    invoke-direct {v6, v1, v9, v2}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v71, v6

    const/16 v6, 0x8

    invoke-direct {v9, v1, v6, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v72, v9

    const-string v9, " at "

    move-object/from16 v73, v5

    const/4 v5, 0x0

    invoke-direct {v6, v1, v5, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v74, v6

    const-string v6, "ly "

    invoke-direct {v9, v1, v5, v6}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    invoke-direct {v6, v11, v5, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    const/4 v15, 0x5

    invoke-direct {v5, v1, v15, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lorg/brotli/dec/k;

    move-object/from16 v75, v5

    const/16 v5, 0x9

    invoke-direct {v15, v1, v5, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    move-object/from16 v76, v15

    const/16 v15, 0xa

    invoke-direct {v5, v4, v15, v2}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v77, v5

    new-instance v5, Lorg/brotli/dec/k;

    invoke-direct {v5, v1, v15, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lorg/brotli/dec/k;

    move-object/from16 v78, v5

    const/4 v5, 0x0

    invoke-direct {v15, v13, v5, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    move-object/from16 v79, v15

    const/16 v15, 0xb

    invoke-direct {v5, v1, v15, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lorg/brotli/dec/k;

    move-object/from16 v80, v5

    const/16 v5, 0xa

    invoke-direct {v15, v1, v5, v12}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    move-object/from16 v81, v15

    const-string v15, "=\""

    move-object/from16 v82, v6

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v83, v5

    new-instance v5, Lorg/brotli/dec/k;

    invoke-direct {v5, v4, v6, v13}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v84, v5

    new-instance v5, Lorg/brotli/dec/k;

    move-object/from16 v85, v9

    const-string v9, ".com/"

    invoke-direct {v5, v9, v6, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v86, v5

    const-string v5, " of the "

    invoke-direct {v9, v11, v6, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    const/16 v11, 0xa

    invoke-direct {v5, v1, v11, v10}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lorg/brotli/dec/k;

    move-object/from16 v87, v5

    const-string v5, ". This "

    invoke-direct {v11, v1, v6, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    move-object/from16 v88, v11

    const-string v11, ","

    invoke-direct {v5, v1, v6, v11}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v89, v5

    new-instance v5, Lorg/brotli/dec/k;

    invoke-direct {v5, v13, v6, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v90, v5

    const/16 v5, 0xa

    invoke-direct {v6, v1, v5, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v91, v6

    new-instance v6, Lorg/brotli/dec/k;

    invoke-direct {v6, v1, v5, v13}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    move-object/from16 v92, v6

    const-string v6, " not "

    move-object/from16 v93, v9

    const/4 v9, 0x0

    invoke-direct {v5, v1, v9, v6}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    invoke-direct {v6, v4, v9, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v94, v6

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v95, v5

    const-string v5, "er "

    invoke-direct {v6, v1, v9, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    const/16 v9, 0xb

    invoke-direct {v5, v4, v9, v4}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v96, v5

    const-string v5, "al "

    move-object/from16 v97, v6

    const/4 v6, 0x0

    invoke-direct {v9, v1, v6, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lorg/brotli/dec/k;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v98, v5

    const-string v5, "=\'"

    move-object/from16 v99, v9

    const/4 v9, 0x0

    invoke-direct {v6, v1, v9, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v100, v6

    const/16 v6, 0xb

    invoke-direct {v9, v1, v6, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    const/16 v7, 0xa

    invoke-direct {v6, v1, v7, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v101, v6

    const/4 v6, 0x0

    invoke-direct {v7, v4, v6, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v102, v7

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v103, v9

    const-string v9, "ful "

    invoke-direct {v7, v1, v6, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    const/16 v6, 0xa

    invoke-direct {v9, v4, v6, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v104, v9

    const-string v9, "ive "

    move-object/from16 v105, v7

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v9}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lorg/brotli/dec/k;

    move-object/from16 v106, v6

    const-string v6, "less "

    invoke-direct {v9, v1, v7, v6}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    const/16 v7, 0xb

    invoke-direct {v6, v1, v7, v10}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lorg/brotli/dec/k;

    const-string v7, "est "

    move-object/from16 v107, v6

    const/4 v6, 0x0

    invoke-direct {v10, v1, v6, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    const/16 v6, 0xa

    invoke-direct {v7, v4, v6, v13}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v108, v7

    const/16 v7, 0xb

    invoke-direct {v6, v1, v7, v12}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/brotli/dec/k;

    const/4 v7, 0x0

    invoke-direct {v12, v4, v7, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v109, v12

    const/16 v12, 0xa

    invoke-direct {v7, v1, v12, v11}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/brotli/dec/k;

    move-object/from16 v110, v7

    const-string v7, "ize "

    move-object/from16 v111, v6

    const/4 v6, 0x0

    invoke-direct {v12, v1, v6, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    const/16 v6, 0xb

    invoke-direct {v7, v1, v6, v13}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v112, v7

    const-string v7, "\u00c2\u00a0"

    move-object/from16 v113, v12

    const/4 v12, 0x0

    invoke-direct {v6, v7, v12, v1}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    invoke-direct {v7, v4, v12, v11}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/brotli/dec/k;

    move-object/from16 v114, v7

    const/16 v7, 0xa

    invoke-direct {v12, v1, v7, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v115, v12

    const/16 v12, 0xb

    invoke-direct {v7, v1, v12, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lorg/brotli/dec/k;

    move-object/from16 v116, v7

    const-string v7, "ous "

    move-object/from16 v117, v6

    const/4 v6, 0x0

    invoke-direct {v12, v1, v6, v7}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    const/16 v7, 0xb

    invoke-direct {v6, v1, v7, v2}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v118, v6

    const/16 v6, 0xa

    invoke-direct {v7, v1, v6, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v119, v7

    new-instance v7, Lorg/brotli/dec/k;

    invoke-direct {v7, v4, v6, v11}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lorg/brotli/dec/k;

    move-object/from16 v120, v7

    const/16 v7, 0xb

    invoke-direct {v6, v4, v7, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v121, v6

    new-instance v6, Lorg/brotli/dec/k;

    invoke-direct {v6, v4, v7, v2}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lorg/brotli/dec/k;

    invoke-direct {v2, v1, v7, v11}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lorg/brotli/dec/k;

    invoke-direct {v11, v1, v7, v8}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lorg/brotli/dec/k;

    invoke-direct {v8, v1, v7, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v122, v8

    new-instance v8, Lorg/brotli/dec/k;

    invoke-direct {v8, v4, v7, v13}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lorg/brotli/dec/k;

    invoke-direct {v13, v1, v7, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lorg/brotli/dec/k;

    invoke-direct {v1, v4, v7, v14}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lorg/brotli/dec/k;

    const/16 v7, 0xa

    invoke-direct {v14, v4, v7, v15}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lorg/brotli/dec/k;

    const/16 v7, 0xb

    invoke-direct {v15, v4, v7, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/brotli/dec/k;

    move-object/from16 v123, v15

    const/16 v15, 0xa

    invoke-direct {v7, v4, v15, v5}, Lorg/brotli/dec/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x79

    new-array v4, v4, [Lorg/brotli/dec/k;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v73, v4, v0

    const/4 v0, 0x3

    aput-object v49, v4, v0

    const/4 v0, 0x4

    aput-object v46, v4, v0

    const/4 v0, 0x5

    aput-object v32, v4, v0

    const/4 v0, 0x6

    aput-object v30, v4, v0

    const/4 v0, 0x7

    aput-object v28, v4, v0

    const/16 v0, 0x8

    aput-object v23, v4, v0

    const/16 v0, 0x9

    aput-object v16, v4, v0

    const/16 v0, 0xa

    aput-object v19, v4, v0

    const/16 v0, 0xb

    aput-object v17, v4, v0

    const/16 v0, 0xc

    aput-object v18, v4, v0

    const/16 v0, 0xd

    aput-object v20, v4, v0

    const/16 v0, 0xe

    aput-object v21, v4, v0

    const/16 v0, 0xf

    aput-object v22, v4, v0

    const/16 v0, 0x10

    aput-object v24, v4, v0

    const/16 v0, 0x11

    aput-object v25, v4, v0

    const/16 v0, 0x12

    aput-object v26, v4, v0

    const/16 v0, 0x13

    aput-object v27, v4, v0

    const/16 v0, 0x14

    aput-object v29, v4, v0

    const/16 v0, 0x15

    aput-object v31, v4, v0

    const/16 v0, 0x16

    aput-object v34, v4, v0

    const/16 v0, 0x17

    aput-object v33, v4, v0

    const/16 v0, 0x18

    aput-object v35, v4, v0

    const/16 v0, 0x19

    aput-object v38, v4, v0

    const/16 v0, 0x1a

    aput-object v36, v4, v0

    const/16 v0, 0x1b

    aput-object v37, v4, v0

    const/16 v0, 0x1c

    aput-object v39, v4, v0

    const/16 v0, 0x1d

    aput-object v41, v4, v0

    const/16 v0, 0x1e

    aput-object v40, v4, v0

    const/16 v0, 0x1f

    aput-object v42, v4, v0

    const/16 v0, 0x20

    aput-object v43, v4, v0

    const/16 v0, 0x21

    aput-object v44, v4, v0

    const/16 v0, 0x22

    aput-object v45, v4, v0

    const/16 v0, 0x23

    aput-object v47, v4, v0

    const/16 v0, 0x24

    aput-object v48, v4, v0

    const/16 v0, 0x25

    aput-object v50, v4, v0

    const/16 v0, 0x26

    aput-object v55, v4, v0

    const/16 v0, 0x27

    aput-object v51, v4, v0

    const/16 v0, 0x28

    aput-object v52, v4, v0

    const/16 v0, 0x29

    aput-object v53, v4, v0

    const/16 v0, 0x2a

    aput-object v54, v4, v0

    const/16 v0, 0x2b

    aput-object v57, v4, v0

    const/16 v0, 0x2c

    aput-object v56, v4, v0

    const/16 v0, 0x2d

    aput-object v58, v4, v0

    const/16 v0, 0x2e

    aput-object v59, v4, v0

    const/16 v0, 0x2f

    aput-object v61, v4, v0

    const/16 v0, 0x30

    aput-object v60, v4, v0

    const/16 v0, 0x31

    aput-object v62, v4, v0

    const/16 v0, 0x32

    aput-object v63, v4, v0

    const/16 v0, 0x33

    aput-object v65, v4, v0

    const/16 v0, 0x34

    aput-object v64, v4, v0

    const/16 v0, 0x35

    aput-object v69, v4, v0

    const/16 v0, 0x36

    aput-object v66, v4, v0

    const/16 v0, 0x37

    aput-object v67, v4, v0

    const/16 v0, 0x38

    aput-object v68, v4, v0

    const/16 v0, 0x39

    aput-object v70, v4, v0

    const/16 v0, 0x3a

    aput-object v71, v4, v0

    const/16 v0, 0x3b

    aput-object v72, v4, v0

    const/16 v0, 0x3c

    aput-object v74, v4, v0

    const/16 v0, 0x3d

    aput-object v85, v4, v0

    const/16 v0, 0x3e

    aput-object v82, v4, v0

    const/16 v0, 0x3f

    aput-object v75, v4, v0

    const/16 v0, 0x40

    aput-object v76, v4, v0

    const/16 v0, 0x41

    aput-object v77, v4, v0

    const/16 v0, 0x42

    aput-object v78, v4, v0

    const/16 v0, 0x43

    aput-object v79, v4, v0

    const/16 v0, 0x44

    aput-object v80, v4, v0

    const/16 v0, 0x45

    aput-object v81, v4, v0

    const/16 v0, 0x46

    aput-object v83, v4, v0

    const/16 v0, 0x47

    aput-object v84, v4, v0

    const/16 v0, 0x48

    aput-object v86, v4, v0

    const/16 v0, 0x49

    aput-object v93, v4, v0

    const/16 v0, 0x4a

    aput-object v87, v4, v0

    const/16 v0, 0x4b

    aput-object v88, v4, v0

    const/16 v0, 0x4c

    aput-object v89, v4, v0

    const/16 v0, 0x4d

    aput-object v90, v4, v0

    const/16 v0, 0x4e

    aput-object v91, v4, v0

    const/16 v0, 0x4f

    aput-object v92, v4, v0

    const/16 v0, 0x50

    aput-object v95, v4, v0

    const/16 v0, 0x51

    aput-object v94, v4, v0

    const/16 v0, 0x52

    aput-object v97, v4, v0

    const/16 v0, 0x53

    aput-object v96, v4, v0

    const/16 v0, 0x54

    aput-object v99, v4, v0

    const/16 v0, 0x55

    aput-object v98, v4, v0

    const/16 v0, 0x56

    aput-object v100, v4, v0

    const/16 v0, 0x57

    aput-object v103, v4, v0

    const/16 v0, 0x58

    aput-object v101, v4, v0

    const/16 v0, 0x59

    aput-object v102, v4, v0

    const/16 v0, 0x5a

    aput-object v105, v4, v0

    const/16 v0, 0x5b

    aput-object v104, v4, v0

    const/16 v0, 0x5c

    aput-object v106, v4, v0

    const/16 v0, 0x5d

    aput-object v9, v4, v0

    const/16 v0, 0x5e

    aput-object v107, v4, v0

    const/16 v0, 0x5f

    aput-object v10, v4, v0

    const/16 v0, 0x60

    aput-object v108, v4, v0

    const/16 v0, 0x61

    aput-object v111, v4, v0

    const/16 v0, 0x62

    aput-object v109, v4, v0

    const/16 v0, 0x63

    aput-object v110, v4, v0

    const/16 v0, 0x64

    aput-object v113, v4, v0

    const/16 v0, 0x65

    aput-object v112, v4, v0

    const/16 v0, 0x66

    aput-object v117, v4, v0

    const/16 v0, 0x67

    aput-object v114, v4, v0

    const/16 v0, 0x68

    aput-object v115, v4, v0

    const/16 v0, 0x69

    aput-object v116, v4, v0

    const/16 v0, 0x6a

    aput-object v12, v4, v0

    const/16 v0, 0x6b

    aput-object v118, v4, v0

    const/16 v0, 0x6c

    aput-object v119, v4, v0

    const/16 v0, 0x6d

    aput-object v120, v4, v0

    const/16 v0, 0x6e

    aput-object v121, v4, v0

    const/16 v0, 0x6f

    aput-object v6, v4, v0

    const/16 v0, 0x70

    aput-object v2, v4, v0

    const/16 v0, 0x71

    aput-object v11, v4, v0

    const/16 v0, 0x72

    aput-object v122, v4, v0

    const/16 v0, 0x73

    aput-object v8, v4, v0

    const/16 v0, 0x74

    aput-object v13, v4, v0

    const/16 v0, 0x75

    aput-object v1, v4, v0

    const/16 v0, 0x76

    aput-object v14, v4, v0

    const/16 v0, 0x77

    aput-object v123, v4, v0

    const/16 v0, 0x78

    aput-object v7, v4, v0

    sput-object v4, Lorg/brotli/dec/k;->d:[Lorg/brotli/dec/k;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/brotli/dec/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/dec/k;->a:[B

    iput p2, p0, Lorg/brotli/dec/k;->b:I

    invoke-static {p3}, Lorg/brotli/dec/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/dec/k;->c:[B

    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static b([BI[BIILorg/brotli/dec/k;)I
    .locals 7

    iget-object v0, p5, Lorg/brotli/dec/k;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    move v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v0, v3

    aput-byte v3, p0, v4

    move v4, v5

    move v3, v6

    goto :goto_0

    :cond_0
    iget v0, p5, Lorg/brotli/dec/k;->b:I

    invoke-static {v0}, Lorg/brotli/dec/m;->a(I)I

    move-result v1

    if-le v1, p4, :cond_1

    move v1, p4

    :cond_1
    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-static {v0}, Lorg/brotli/dec/m;->b(I)I

    move-result v1

    sub-int/2addr p4, v1

    move v1, p4

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    aget-byte p3, p2, p3

    aput-byte p3, p0, v4

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    move p3, v5

    goto :goto_1

    :cond_2
    const/16 p2, 0xb

    const/16 p3, 0xa

    if-eq v0, p2, :cond_3

    if-ne v0, p3, :cond_8

    :cond_3
    sub-int p2, v4, p4

    if-ne v0, p3, :cond_4

    const/4 p4, 0x1

    :cond_4
    :goto_2
    if-lez p4, :cond_8

    aget-byte p3, p0, p2

    and-int/lit16 v0, p3, 0xff

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_6

    const/16 v1, 0x61

    if-lt v0, v1, :cond_5

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_5

    xor-int/lit8 p3, p3, 0x20

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_6
    const/16 p3, 0xe0

    if-ge v0, p3, :cond_7

    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p0, p3

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p4, p4, -0x2

    goto :goto_2

    :cond_7
    add-int/lit8 p3, p2, 0x2

    aget-byte v0, p0, p3

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 p4, p4, -0x3

    goto :goto_2

    :cond_8
    iget-object p2, p5, Lorg/brotli/dec/k;->c:[B

    array-length p3, p2

    :goto_3
    if-ge v2, p3, :cond_9

    add-int/lit8 p4, v4, 0x1

    add-int/lit8 p5, v2, 0x1

    aget-byte v0, p2, v2

    aput-byte v0, p0, v4

    move v4, p4

    move v2, p5

    goto :goto_3

    :cond_9
    sub-int/2addr v4, p1

    return v4
.end method

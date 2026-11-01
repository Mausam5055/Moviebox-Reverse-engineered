.class public final Llv/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Llv/a$a;-><init>()V

    return-void
.end method

.method private final a(Llv/a;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Llv/a;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Llv/a;->a()Z

    move-result p1

    const-string v0, "toUpperCase(...)"

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Llv/a$a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/transsion/transfer/wifi/util/d;->a:Lcom/transsion/transfer/wifi/util/d;

    invoke-virtual {v2, v1}, Lcom/transsion/transfer/wifi/util/d;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-5G-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Llv/a$a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/transsion/transfer/wifi/util/d;->a:Lcom/transsion/transfer/wifi/util/d;

    invoke-virtual {v2, v1}, Lcom/transsion/transfer/wifi/util/d;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the device isn\u2018t sender"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/transfer/wifi/util/d;->a:Lcom/transsion/transfer/wifi/util/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/util/d;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIRECT-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-MOVIEBOX"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Z)Llv/a;
    .locals 21

    new-instance v15, Llv/a;

    move-object v0, v15

    const v18, 0x1ffff

    const/16 v19, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Llv/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "mb_unique"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Llv/a;->y(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Llv/a;->u(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0}, Llv/a;->s(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Llv/a;->w(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Llv/a;->C(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Llv/a;->D(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Llv/a;->A(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Llv/a;->B(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Llv/a;->v(Ljava/lang/String;)V

    sget-object v0, Lyg/b;->a:Lyg/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "getApp(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Llv/a;->t(Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-virtual {v1, v0}, Llv/a;->z(Ljava/lang/String;)V

    const-string v0, "avatarIndex"

    invoke-virtual {v1, v0}, Llv/a;->r(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "5G"

    invoke-virtual {v1, v0}, Llv/a;->E(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    const-string v0, "2.4G"

    invoke-virtual {v1, v0}, Llv/a;->E(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-direct {v0, v1}, Llv/a$a;->a(Llv/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Llv/a;->H(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/transfer/wifi/util/b;->a:Lcom/transsion/transfer/wifi/util/b;

    invoke-virtual {v1}, Llv/a;->p()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v2, v3}, Lcom/transsion/transfer/wifi/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Llv/a;->G(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llv/a;->x(Z)V

    return-object v1
.end method

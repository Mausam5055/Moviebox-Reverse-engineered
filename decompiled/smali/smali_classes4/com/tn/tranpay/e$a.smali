.class public final Lcom/tn/tranpay/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/e;
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

    invoke-direct {p0}, Lcom/tn/tranpay/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/e;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tn/tranpay/e;->b(Lcom/tn/tranpay/e;)V

    return-void
.end method

.method public final b()Lcom/tn/tranpay/e;
    .locals 1

    invoke-static {}, Lcom/tn/tranpay/e;->a()Lcom/tn/tranpay/e;

    move-result-object v0

    return-object v0
.end method

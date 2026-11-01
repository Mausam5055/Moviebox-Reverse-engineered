.class public final Lcom/transsion/postdetail/helper/ImmVideoHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/helper/ImmVideoHelper;
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

    invoke-direct {p0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/postdetail/helper/ImmVideoHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->d()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;

    return-object v0
.end method

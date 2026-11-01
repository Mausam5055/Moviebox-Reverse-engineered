.class public final Lcom/transsion/web/fragment/WebFragmentV2$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/web/fragment/WebFragmentV2;
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

    invoke-direct {p0}, Lcom/transsion/web/fragment/WebFragmentV2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2;->i1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/transsion/web/fragment/WebFragmentV2;
    .locals 1

    new-instance v0, Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-direct {v0}, Lcom/transsion/web/fragment/WebFragmentV2;-><init>()V

    return-object v0
.end method

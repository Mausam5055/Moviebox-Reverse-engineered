.class public final Lar/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/search_pugc/bean/SecondTab;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lar/a;-><init>(Lcom/transsion/search_pugc/bean/SecondTab;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar/a;->a:Lcom/transsion/search_pugc/bean/SecondTab;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/search_pugc/bean/SecondTab;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lar/a;-><init>(Lcom/transsion/search_pugc/bean/SecondTab;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/search_pugc/bean/SecondTab;
    .locals 1

    iget-object v0, p0, Lar/a;->a:Lcom/transsion/search_pugc/bean/SecondTab;

    return-object v0
.end method

.method public final b(Lcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 0

    iput-object p1, p0, Lar/a;->a:Lcom/transsion/search_pugc/bean/SecondTab;

    return-void
.end method

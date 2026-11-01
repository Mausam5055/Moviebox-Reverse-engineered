.class public final Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->c:Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;

    iget-object v1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    iget-object p1, p1, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TestAdNativeListBean(title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adManager="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

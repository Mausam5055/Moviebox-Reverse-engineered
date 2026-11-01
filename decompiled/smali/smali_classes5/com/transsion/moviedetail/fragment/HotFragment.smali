.class public final Lcom/transsion/moviedetail/fragment/HotFragment;
.super Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/fragment/HotFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/HotFragment;",
        "Lcom/transsion/moviedetail/fragment/SubjectListFragment;",
        "<init>",
        "()V",
        "Companion",
        "a",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/moviedetail/fragment/HotFragment$a;

.field public static final TAG:Ljava/lang/String; = "HotFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetail/fragment/HotFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/fragment/HotFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetail/fragment/HotFragment;->Companion:Lcom/transsion/moviedetail/fragment/HotFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/PostRankType;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/transsion/moviedetail/fragment/HotFragment;->Companion:Lcom/transsion/moviedetail/fragment/HotFragment$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transsion/moviedetail/fragment/HotFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/PostRankType;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

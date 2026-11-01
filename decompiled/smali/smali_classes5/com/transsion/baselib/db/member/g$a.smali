.class Lcom/transsion/baselib/db/member/g$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/member/g;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/member/g;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/member/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/member/g$a;->a:Lcom/transsion/baselib/db/member/g;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/member/g$a;->f(Lz3/e;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `member_resolution` (`subjectId`,`ep`,`se`,`vipResolutionTip`,`isUnlock`) VALUES (?,?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V
    .locals 5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getEp()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getSe()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getVipResolutionTip()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getVipResolutionTip()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const/4 v2, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v2}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v2, v3, v4}, Lz3/e;->c(IJ)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->isUnlock()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->isUnlock()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    const/4 p2, 0x5

    if-nez v1, :cond_4

    invoke-interface {p1, p2}, Lz3/e;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_4
    return-void
.end method

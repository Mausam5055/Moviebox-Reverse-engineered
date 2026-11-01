.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyGetPkgInfoBean"
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private requesting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 1

    const-string v0, "requesting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->copy(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;
    .locals 1

    const-string v0, "requesting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final setInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    return-void
.end method

.method public final setRequesting(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->requesting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$LazyGetPkgInfoBean;->info:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LazyGetPkgInfoBean(requesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", info="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

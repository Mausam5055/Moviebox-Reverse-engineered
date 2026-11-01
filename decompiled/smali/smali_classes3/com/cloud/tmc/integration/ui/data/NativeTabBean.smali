.class public final Lcom/cloud/tmc/integration/ui/data/NativeTabBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\u0008\u0010\"\u001a\u00020\u0013H\u0016J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "()V",
        "backgroundColor",
        "",
        "getBackgroundColor",
        "()Ljava/lang/String;",
        "setBackgroundColor",
        "(Ljava/lang/String;)V",
        "color",
        "getColor",
        "setColor",
        "selectBackgroundColor",
        "getSelectBackgroundColor",
        "setSelectBackgroundColor",
        "selectedColor",
        "getSelectedColor",
        "setSelectedColor",
        "selectedIndex",
        "",
        "getSelectedIndex",
        "()I",
        "setSelectedIndex",
        "(I)V",
        "tabList",
        "",
        "getTabList",
        "()Ljava/util/List;",
        "setTabList",
        "(Ljava/util/List;)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private selectBackgroundColor:Ljava/lang/String;

.field private selectedColor:Ljava/lang/String;

.field private selectedIndex:I

.field private tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    iget v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iget-object p1, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    return v0
.end method

.method public final getTabList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    iget v3, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    return-void
.end method

.method public final setSelectBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    return-void
.end method

.method public final setTabList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    iget v4, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NativeTabBean(color="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selectedColor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", backgroundColor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selectBackgroundColor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selectedIndex="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tabList="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

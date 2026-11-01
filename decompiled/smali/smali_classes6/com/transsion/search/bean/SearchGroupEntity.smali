.class public final Lcom/transsion/search/bean/SearchGroupEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/search/bean/SearchGroupEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "pager",
        "Lcom/transsion/search/bean/PagerEntity;",
        "getPager",
        "()Lcom/transsion/search/bean/PagerEntity;",
        "items",
        "",
        "Lcom/transsion/publish/api/GroupBean;",
        "getItems",
        "()Ljava/util/List;",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/GroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Lcom/transsion/search/bean/PagerEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/GroupBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/search/bean/SearchGroupEntity;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/search/bean/PagerEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchGroupEntity;->pager:Lcom/transsion/search/bean/PagerEntity;

    return-object v0
.end method

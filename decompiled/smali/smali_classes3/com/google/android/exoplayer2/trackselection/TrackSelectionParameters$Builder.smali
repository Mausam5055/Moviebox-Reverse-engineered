.class public Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/google/common/collect/ImmutableList;

.field private m:I

.field private n:Lcom/google/common/collect/ImmutableList;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/google/common/collect/ImmutableList;

.field private s:Lcom/google/common/collect/ImmutableList;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/HashMap;

.field private z:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->d:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->k:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->l:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->m:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->o:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->p:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->q:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->s:Lcom/google/common/collect/ImmutableList;

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->t:I

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->u:I

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->v:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->w:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->x:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->y:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->F(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->I(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->A:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->a:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->a:I

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->b:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->b:I

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->c:I

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->d:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->d:I

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->e:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->e:I

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->f:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->f:I

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->g:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->g:I

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->h:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->h:I

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->i:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->i:I

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->j:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->j:I

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->k:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->k:Z

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->l:Lcom/google/common/collect/ImmutableList;

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->m:I

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->m:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->C([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->o:I

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->o:I

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->p:I

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->p:I

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->q:I

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->q:I

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->C([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->s:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->t:I

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->t:I

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->u:I

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->u:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->v:Z

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->v:Z

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->w:Z

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->w:Z

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->x:Z

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lla/o;->c:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/d;->b(Lcom/google/android/exoplayer2/k$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->y:Ljava/util/HashMap;

    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lla/o;

    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->y:Ljava/util/HashMap;

    iget-object v5, v3, Lla/o;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_2

    aget v1, p1, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->B(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method private B(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->a:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->b:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->c:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->d:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->d:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->e:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->e:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->f:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->f:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->g:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->h:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->h:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->i:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->j:I

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->k:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->k:Z

    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->l:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->l:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->m:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->m:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->n:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->o:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->o:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->p:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->p:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->q:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->q:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->r:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->s:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->s:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->t:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->t:I

    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->u:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->u:I

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->v:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->v:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->w:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->w:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->x:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->x:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->y:Ljava/util/HashMap;

    return-void
.end method

.method private static C([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/p0;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private G(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->t:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->Y(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->s:Lcom/google/common/collect/ImmutableList;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->l:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->m:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->n:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->o:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->p:I

    return p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->q:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->r:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->s:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->t:I

    return p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->c:I

    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->u:I

    return p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->v:Z

    return p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->w:Z

    return p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->x:Z

    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->d:I

    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->e:I

    return p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->f:I

    return p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->g:I

    return p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->h:I

    return p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->i:I

    return p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->j:I

    return p0
.end method


# virtual methods
.method public A()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)V

    return-object v0
.end method

.method protected D(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->B(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-object p0
.end method

.method public E(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->z:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public F(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->G(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public H(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->i:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->j:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->k:Z

    return-object p0
.end method

.method public I(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->O(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->H(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    return-object p1
.end method

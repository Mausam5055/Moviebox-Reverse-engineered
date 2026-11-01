.class public Lfb/a;
.super Ljavax/annotation/processing/AbstractProcessor;


# instance fields
.field private a:Lcom/google/common/collect/j3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lfb/a;->a:Lcom/google/common/collect/j3;

    return-void
.end method

.class public abstract Landroidx/emoji2/text/flatbuffer/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroidx/emoji2/text/flatbuffer/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/emoji2/text/flatbuffer/f;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/flatbuffer/f;->a:Landroidx/emoji2/text/flatbuffer/f;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/text/flatbuffer/g;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/g;-><init>()V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/f;->a:Landroidx/emoji2/text/flatbuffer/f;

    :cond_0
    sget-object v0, Landroidx/emoji2/text/flatbuffer/f;->a:Landroidx/emoji2/text/flatbuffer/f;

    return-object v0
.end method

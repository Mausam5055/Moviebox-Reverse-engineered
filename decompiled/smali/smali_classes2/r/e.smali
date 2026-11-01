.class public abstract Lr/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/text/style/g;

.field private static final b:Landroidx/compose/ui/text/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Landroidx/compose/ui/text/style/g;

    move-object/from16 v26, v0

    sget-object v1, Landroidx/compose/ui/text/style/g$a;->a:Landroidx/compose/ui/text/style/g$a$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/g$a$a;->a()F

    move-result v1

    sget-object v2, Landroidx/compose/ui/text/style/g$c;->a:Landroidx/compose/ui/text/style/g$c$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/g$c$a;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/text/style/g;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lr/e;->a:Landroidx/compose/ui/text/style/g;

    sget-object v0, Landroidx/compose/ui/text/d0;->d:Landroidx/compose/ui/text/d0$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/d0$a;->a()Landroidx/compose/ui/text/d0;

    move-result-object v0

    invoke-static {}, Landroidx/compose/material3/b;->a()Landroidx/compose/ui/text/w;

    move-result-object v25

    const v30, 0xe7ffff

    const/16 v31, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v0 .. v31}, Landroidx/compose/ui/text/d0;->c(Landroidx/compose/ui/text/d0;JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Lz/h;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/w;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/d0;

    move-result-object v0

    sput-object v0, Lr/e;->b:Landroidx/compose/ui/text/d0;

    return-void
.end method

.method public static final a()Landroidx/compose/ui/text/d0;
    .locals 1

    sget-object v0, Lr/e;->b:Landroidx/compose/ui/text/d0;

    return-object v0
.end method

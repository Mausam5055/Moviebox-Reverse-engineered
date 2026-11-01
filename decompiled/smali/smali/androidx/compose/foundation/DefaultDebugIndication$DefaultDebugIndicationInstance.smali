.class final Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/DefaultDebugIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultDebugIndicationInstance"
.end annotation


# instance fields
.field private final n:Lp/g;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lp/g;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->n:Lp/g;

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Lp/g;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->n:Lp/g;

    return-object p0
.end method

.method public static final synthetic E1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->q:Z

    return p0
.end method

.method public static final synthetic F1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->p:Z

    return p0
.end method

.method public static final synthetic G1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->o:Z

    return p0
.end method

.method public static final synthetic H1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->q:Z

    return-void
.end method

.method public static final synthetic I1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->p:Z

    return-void
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->o:Z

    return-void
.end method


# virtual methods
.method public n(Lz/c;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lz/c;->Y0()V

    iget-boolean v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->o:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v2

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v15

    const/16 v21, 0x7a

    const/16 v22, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v22}, Lz/f;->j(Lz/g;JJJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->p:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->q:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v2

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v15

    const/16 v21, 0x7a

    const/16 v22, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v22}, Lz/f;->j(Lz/g;JJJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n1()V
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1;-><init>(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public synthetic w0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

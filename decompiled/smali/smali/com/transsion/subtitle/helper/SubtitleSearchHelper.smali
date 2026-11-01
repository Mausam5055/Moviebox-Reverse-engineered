.class public final Lcom/transsion/subtitle/helper/SubtitleSearchHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

.field private static final d:Ljava/lang/String;

.field private static final e:Lkotlin/Lazy;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->c:Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

    sget-object v0, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    new-instance v0, Lcom/transsion/subtitle/helper/g;

    invoke-direct {v0}, Lcom/transsion/subtitle/helper/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->a:Z

    return-void
.end method

.method public static synthetic a()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->h()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->e:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;

    iget v1, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;-><init>(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    check-cast v4, Llj/d1;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    check-cast v2, Llj/d1;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string v5, "getApp(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->A1()Llj/d1;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    invoke-interface {v2, v0}, Llj/d1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    new-instance p1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$type$1;

    invoke-direct {p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$type$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v4, Llg/a;->a:Llg/a$a;

    sget-object v5, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initLocalLanguage, localListSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", insert "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v2

    move-object v2, p1

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    iput-object v4, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    invoke-interface {v4, p1, v0}, Llj/d1;->c(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;

    iget v3, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;

    invoke-direct {v2, v1, v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;-><init>(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    const-string v5, "en"

    const/4 v6, 0x0

    const/4 v8, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_1
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :pswitch_2
    iget-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Locale;

    iget-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    check-cast v12, Llj/d1;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :pswitch_3
    iget-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/util/Locale;

    iget-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    check-cast v11, Llj/d1;

    iget-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_c

    :pswitch_5
    iget-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    check-cast v4, Llj/d1;

    iget-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v4

    move-object v12, v9

    goto/16 :goto_3

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v0, v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iput v8, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_3
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v4, "subtitle_language"

    invoke-virtual {v0, v4, v8}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1a

    new-instance v4, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$2$type$1;

    invoke-direct {v4}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$2$type$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-boolean v8, v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->b:Z

    sget-object v4, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    const-string v10, "getApp(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/AppDatabase;->A1()Llj/d1;

    move-result-object v4

    iput-object v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-interface {v4, v2}, Llj/d1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_5

    return-object v3

    :cond_5
    move-object v12, v0

    move-object v11, v4

    move-object v0, v9

    :goto_3
    check-cast v0, Ljava/util/List;

    move-object v4, v12

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_b

    :cond_6
    sget-object v13, Llg/a;->a:Llg/a$a;

    sget-object v14, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get language , list = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v4, v13, :cond_7

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-static {v4, v6}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v4

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_4
    if-eqz v0, :cond_b

    move-object v13, v0

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v6

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getInSearch()Z

    move-result v16

    if-eqz v16, :cond_8

    iput-boolean v8, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_8
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-boolean v8, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-boolean v8, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_9
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v14, v8

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    :cond_c
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    move-object v0, v12

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-boolean v8, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-boolean v8, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_f
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v14, v8

    goto :goto_6

    :cond_10
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_11

    if-eqz v14, :cond_11

    iput-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-interface {v11, v5, v8, v2}, Llj/d1;->b(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    return-object v3

    :cond_11
    :goto_7
    sget-object v17, Llg/a;->a:Llg/a$a;

    sget-object v18, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get language new,locale ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " list = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v4

    move-object v4, v0

    :cond_12
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->component1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->component2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->component3()Ljava/lang/String;

    move-result-object v0

    const-string v13, "in_id"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const-string v13, "in"

    goto :goto_9

    :cond_13
    move-object v13, v6

    :goto_9
    iget-boolean v14, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v14, :cond_14

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    :cond_14
    iget-boolean v14, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v14, :cond_16

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    :cond_15
    move v13, v8

    goto :goto_a

    :cond_16
    const/4 v13, 0x0

    :goto_a
    new-instance v14, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-direct {v14, v6, v7, v0, v13}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-interface {v12, v14, v2}, Llj/d1;->c(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    return-object v3

    :cond_17
    :goto_b
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    sget-object v4, Llg/a;->a:Llg/a$a;

    sget-object v5, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    const-string v6, "language list all null~"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_19

    return-object v3

    :cond_19
    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1a
    sget-object v4, Llg/a;->a:Llg/a$a;

    sget-object v5, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    const-string v6, "get language list null~"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x6

    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    return-object v3

    :cond_1b
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_f

    :goto_e
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->b:Z

    sget-object v5, Llg/a;->a:Llg/a$a;

    sget-object v6, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get language list error:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    const/4 v0, 0x7

    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1d

    return-object v3

    :cond_1d
    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final h()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;
    .locals 1

    new-instance v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;

    invoke-direct {v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;-><init>()V

    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "sub_def_la.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final e(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_5

    :cond_4
    move-object p1, v0

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-static {v2, p1, v1, v4, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "[\\\\/:#*?\"<>|&]_-"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p1, v2, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$updateLanguageList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$updateLanguageList$1;-><init>(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

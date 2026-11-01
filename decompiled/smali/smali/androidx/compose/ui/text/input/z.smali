.class public final Landroidx/compose/ui/text/input/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field private final a:Landroidx/compose/ui/text/input/q;

.field private final b:Z

.field private c:I

.field private d:Landroidx/compose/ui/text/input/TextFieldValue;

.field private e:I

.field private f:Z

.field private final g:Ljava/util/List;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/q;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/text/input/z;->a:Landroidx/compose/ui/text/input/q;

    iput-boolean p3, p0, Landroidx/compose/ui/text/input/z;->b:Z

    iput-object p1, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/z;->g:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/text/input/z;->h:Z

    return-void
.end method

.method private final a(Landroidx/compose/ui/text/input/m;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/text/input/z;->b()Z

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/compose/ui/text/input/z;->c()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/compose/ui/text/input/z;->c()Z

    throw p1
.end method

.method private final b()Z
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/input/z;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/text/input/z;->c:I

    return v1
.end method

.method private final c()Z
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/input/z;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/text/input/z;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->a:Landroidx/compose/ui/text/input/q;

    iget-object v1, p0, Landroidx/compose/ui/text/input/z;->g:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/q;->e(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Landroidx/compose/ui/text/input/z;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final d(I)V
    .locals 2

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/z;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/z;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/text/input/z;->b()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public closeConnection()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/text/input/z;->c:I

    iput-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->a:Landroidx/compose/ui/text/input/q;

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/q;->b(Landroidx/compose/ui/text/input/z;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/z;->b:Z

    :cond_0
    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/ui/text/input/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    :cond_0
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/input/k;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/k;-><init>(II)V

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/input/l;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/l;-><init>(II)V

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/text/input/z;->c()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/input/n;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/n;-><init>()V

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/z;->f:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, Landroidx/compose/ui/text/input/z;->e:I

    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p1}, Landroidx/compose/ui/text/input/s;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object p1, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/b0;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p1}, Landroidx/compose/ui/text/input/d0;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p2, p1}, Landroidx/compose/ui/text/input/d0;->b(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p2, p1}, Landroidx/compose/ui/text/input/d0;->c(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x117

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/z;->d(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x116

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/z;->d(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x115

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/z;->d(I)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Landroidx/compose/ui/text/input/c0;

    iget-object v1, p0, Landroidx/compose/ui/text/input/z;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/c0;-><init>(II)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IME sends unsupported Editor Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingIC"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->a()I

    move-result p1

    goto :goto_0

    :pswitch_0
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->f()I

    move-result p1

    goto :goto_0

    :pswitch_1
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->b()I

    move-result p1

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->d()I

    move-result p1

    goto :goto_0

    :pswitch_3
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->h()I

    move-result p1

    goto :goto_0

    :pswitch_4
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->g()I

    move-result p1

    goto :goto_0

    :pswitch_5
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/o$a;->a()I

    move-result p1

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->a:Landroidx/compose/ui/text/input/q;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/q;->d(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_9

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_8

    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v1

    :goto_4
    const/16 v8, 0x22

    if-lt v0, v8, :cond_5

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    if-nez v1, :cond_7

    if-lt v0, v8, :cond_6

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    goto :goto_5

    :cond_6
    move v9, v1

    move v6, v2

    move v7, v6

    move v8, v7

    goto :goto_5

    :cond_7
    move v9, v1

    move v8, v7

    move v7, v6

    move v6, v3

    goto :goto_5

    :cond_8
    move v8, v1

    move v9, v8

    move v6, v2

    move v7, v6

    :goto_5
    iget-object v3, p0, Landroidx/compose/ui/text/input/z;->a:Landroidx/compose/ui/text/input/q;

    invoke-interface/range {v3 .. v9}, Landroidx/compose/ui/text/input/q;->c(ZZZZZZ)V

    return v2

    :cond_9
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/z;->a:Landroidx/compose/ui/text/input/q;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/q;->a(Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/ui/text/input/a0;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/a0;-><init>(II)V

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    :cond_0
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/ui/text/input/b0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/b0;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    :cond_0
    return v0
.end method

.method public setSelection(II)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/z;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/input/c0;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/c0;-><init>(II)V

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/z;->a(Landroidx/compose/ui/text/input/m;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

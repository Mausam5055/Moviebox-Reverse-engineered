.class public Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64

.field private static final v0:[F


# instance fields
.field private final A:Landroid/graphics/drawable/Drawable;

.field private final B:Landroid/graphics/drawable/Drawable;

.field private final C:F

.field private final D:F

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Landroid/graphics/drawable/Drawable;

.field private final H:Landroid/graphics/drawable/Drawable;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Landroid/graphics/drawable/Drawable;

.field private final L:Landroid/graphics/drawable/Drawable;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private O:Lcom/google/android/exoplayer2/o2;

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:I

.field private U:I

.field private V:I

.field private W:[J

.field private final a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

.field private a0:[Z

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private b0:[J

.field private final c:Landroid/view/View;

.field private c0:[Z

.field private final d:Landroid/view/View;

.field private d0:J

.field private final e:Landroid/view/View;

.field private e0:Lcom/google/android/exoplayer2/ui/i0;

.field private final f:Landroid/view/View;

.field private f0:Landroid/content/res/Resources;

.field private final g:Landroid/view/View;

.field private g0:Landroidx/recyclerview/widget/RecyclerView;

.field private final h:Landroid/widget/TextView;

.field private h0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

.field private final i:Landroid/widget/TextView;

.field private i0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

.field private final j:Landroid/widget/ImageView;

.field private j0:Landroid/widget/PopupWindow;

.field private final k:Landroid/widget/ImageView;

.field private k0:Z

.field private final l:Landroid/view/View;

.field private l0:I

.field private final m:Landroid/widget/TextView;

.field private m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

.field private final n:Landroid/widget/TextView;

.field private n0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

.field private final o:Lcom/google/android/exoplayer2/ui/n0;

.field private o0:Lcom/google/android/exoplayer2/ui/o0;

.field private final p:Ljava/lang/StringBuilder;

.field private p0:Landroid/widget/ImageView;

.field private final q:Ljava/util/Formatter;

.field private q0:Landroid/widget/ImageView;

.field private final r:Lcom/google/android/exoplayer2/k3$b;

.field private r0:Landroid/widget/ImageView;

.field private final s:Lcom/google/android/exoplayer2/k3$d;

.field private s0:Landroid/view/View;

.field private final t:Ljava/lang/Runnable;

.field private t0:Landroid/view/View;

.field private final u:Landroid/graphics/drawable/Drawable;

.field private u0:Landroid/view/View;

.field private final v:Landroid/graphics/drawable/Drawable;

.field private final w:Landroid/graphics/drawable/Drawable;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/google/android/exoplayer2/m1;->a(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 22
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_control_view:I

    const/16 v3, 0x1388

    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:I

    const/4 v8, 0x0

    iput v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    const/16 v3, 0xc8

    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:I

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView:[I

    move/from16 v5, p3

    invoke-virtual {v3, v0, v4, v5, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :try_start_0
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_controller_layout_id:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_timeout:I

    iget v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:I

    iget v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Y(Landroid/content/res/TypedArray;I)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_rewind_button:I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_fastforward_button:I

    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_previous_button:I

    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_next_button:I

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_shuffle_button:I

    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_subtitle_button:I

    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_vr_button:I

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_time_bar_min_update_interval:I

    iget v14, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:I

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setTimeBarMinUpdateInterval(I)V

    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_animation_enabled:I

    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v10

    move v15, v11

    move v10, v4

    move v11, v5

    move/from16 v21, v12

    move v12, v6

    move v6, v13

    move v13, v7

    move/from16 v7, v21

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    move v7, v8

    move v14, v7

    move v15, v14

    move v6, v9

    move v10, v6

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/google/android/exoplayer2/k3$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/k3$b;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    new-instance v2, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/k3$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    new-array v2, v8, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    new-array v2, v8, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    new-array v2, v8, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    new-array v2, v8, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    new-instance v2, Lcom/google/android/exoplayer2/ui/n;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/n;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/TextView;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/widget/TextView;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/exoplayer2/ui/o;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/o;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/exoplayer2/ui/o;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/o;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_settings:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_audio_track:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/n0;

    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_5

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    move-object/from16 v19, v5

    move/from16 v20, v6

    move v0, v7

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    new-instance v3, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/16 v16, 0x0

    sget v17, Lcom/google/android/exoplayer2/ui/R$style;->ExoStyledControls_TimeBar:I

    const/16 v18, 0x0

    move-object v2, v3

    move-object v9, v3

    move-object/from16 v3, p1

    move-object/from16 p2, v4

    const/4 v8, 0x0

    move-object/from16 v4, v18

    move-object/from16 v19, v5

    move/from16 v5, v16

    move/from16 v20, v6

    move-object/from16 v6, p4

    move v0, v7

    move/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    goto :goto_1

    :cond_6
    move-object/from16 v19, v5

    move/from16 v20, v6

    move v0, v7

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    move-object/from16 v3, v19

    if-eqz v2, :cond_7

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ui/n0;->addListener(Lcom/google/android/exoplayer2/ui/n0$a;)V

    :cond_7
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play_pause:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    sget v5, Lcom/google/android/exoplayer2/ui/R$font;->roboto_medium_numbers:I

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    sget v7, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    sget v9, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    goto :goto_2

    :cond_b
    move-object v9, v8

    :goto_2
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/widget/TextView;

    if-eqz v9, :cond_c

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_c
    if-nez v7, :cond_d

    move-object v7, v9

    :cond_d
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    sget v9, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    sget v8, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    goto :goto_3

    :cond_f
    const/4 v8, 0x0

    :goto_3
    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/widget/TextView;

    if-eqz v8, :cond_10

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    if-nez v9, :cond_11

    move-object v9, v8

    :cond_11
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    if-eqz v9, :cond_12

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    sget v8, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    if-eqz v8, :cond_14

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    move-object/from16 p3, v5

    sget v5, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C:F

    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:F

    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    if-eqz v5, :cond_15

    const/4 v6, 0x0

    invoke-direct {v1, v6, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    :cond_15
    new-instance v6, Lcom/google/android/exoplayer2/ui/i0;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/ui/i0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    move/from16 v16, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/ui/i0;->Y(Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_playback_speed:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    move-object/from16 p4, v5

    sget v5, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_speed:I

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    move/from16 v17, v15

    sget v15, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_title_audio:I

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v15, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_audiotrack:I

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/graphics/drawable/Drawable;

    const/16 v18, 0x0

    aput-object v5, v15, v18

    const/4 v5, 0x1

    aput-object v6, v15, v5

    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-direct {v5, v1, v0, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_settings_list:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x2

    const/4 v15, 0x1

    invoke-direct {v0, v5, v6, v6, v15}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    sget v5, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_16

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_16
    const/4 v6, 0x0

    :goto_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Z

    new-instance v0, Lcom/google/android/exoplayer2/ui/g;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ui/g;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/o0;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_enabled_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_disabled_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->J:Ljava/lang/String;

    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$array;->exo_controls_playback_speeds:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0:[F

    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[F)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_one:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_all:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_exit_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->M:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_enter_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:Ljava/lang/String;

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v9, v11}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v7, v10}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v2, v12}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v4, v13}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v8, v14}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    move/from16 v11, v17

    invoke-virtual {v0, v2, v11}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    move-object/from16 v2, p4

    move/from16 v12, v16

    invoke-virtual {v0, v2, v12}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    if-eqz v2, :cond_17

    move v8, v5

    move-object/from16 v5, p3

    goto :goto_5

    :cond_17
    move-object/from16 v5, p3

    move v8, v6

    :goto_5
    invoke-virtual {v0, v5, v8}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    new-instance v0, Lcom/google/android/exoplayer2/ui/p;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/p;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    return-object p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    return-object p0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    return-object p0
.end method

.method static synthetic F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0()V

    return-void
.end method

.method static synthetic G(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0(I)V

    return-void
.end method

.method static synthetic H(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic I(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic J(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic L(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic M(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->J:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic N(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    return-void
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0()V

    return-void
.end method

.method static synthetic P(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0()V

    return-void
.end method

.method static synthetic Q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    return-void
.end method

.method static synthetic R(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0()V

    return-void
.end method

.method private static S(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3$d;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/k3$d;->n:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private T(Lcom/google/android/exoplayer2/o2;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->pause()V

    return-void
.end method

.method private U(Lcom/google/android/exoplayer2/o2;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->prepare()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0(Lcom/google/android/exoplayer2/o2;IJ)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->play()V

    return-void
.end method

.method private V(Lcom/google/android/exoplayer2/o2;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T(Lcom/google/android/exoplayer2/o2;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U(Lcom/google/android/exoplayer2/o2;)V

    :goto_1
    return-void
.end method

.method private W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private X(Lcom/google/android/exoplayer2/TracksInfo;I)Lcom/google/common/collect/ImmutableList;
    .locals 9

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo;->getTrackGroupInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackType()I

    move-result v5

    if-eq v5, p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    move v6, v2

    :goto_1
    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v6, v7, :cond_2

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isTrackSupported(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/o0;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/ui/o0;->a(Lcom/google/android/exoplayer2/o1;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-direct {v8, p1, v3, v6, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;-><init>(Lcom/google/android/exoplayer2/TracksInfo;IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static Y(Landroid/content/res/TypedArray;I)I
    .locals 1

    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private Z()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->h()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->h()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_2

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->X(Lcom/google/android/exoplayer2/TracksInfo;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->p(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->X(Lcom/google/android/exoplayer2/TracksInfo;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->o(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->o(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0()V

    return-void
.end method

.method private static a0(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0(Landroid/view/View;)V

    return-void
.end method

.method private static b0(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0()V

    return-void
.end method

.method private d0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S:Z

    return p1
.end method

.method private e0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    sub-int p6, p2, p3

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    neg-int p2, p2

    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    sub-int p7, p2, p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    const/4 p8, -0x1

    const/4 p9, -0x1

    move-object p5, p1

    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private f0(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    return-object p0
.end method

.method private h0(Lcom/google/android/exoplayer2/o2;IJ)V
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/o2;->seekTo(IJ)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    return-object p0
.end method

.method private i0(Lcom/google/android/exoplayer2/o2;J)V
    .locals 6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/k3$d;->g()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v2

    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0(Lcom/google/android/exoplayer2/o2;IJ)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/o2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    return-object p0
.end method

.method private j0()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/o2;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0(Lcom/google/android/exoplayer2/o2;J)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Z

    return p0
.end method

.method private l0(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    return-object p0
.end method

.method private m0()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->r()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    return-object p0
.end method

.method private static n0(Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    return-object p0
.end method

.method private o0()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v1

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v2

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v4

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/o2;->h(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0()V

    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/n0;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    return-object p0
.end method

.method private p0()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    return-object p0
.end method

.method private q0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n2;->a:F

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->l(F)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->i(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/o2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V(Lcom/google/android/exoplayer2/o2;)V

    return-void
.end method

.method private r0()V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->u()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    if-eqz v5, :cond_3

    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/n0;->setPosition(J)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/n0;->setBufferedPosition(J)V

    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/n0;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    move-wide v3, v5

    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n2;->a:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_6
    move-wide v7, v5

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/p0;->r(JJJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    const/4 v0, 0x4

    if-eq v4, v0, :cond_8

    if-eq v4, v3, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private s0()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-nez v1, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/n2;->e(F)Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/o2;->b(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    return p0
.end method

.method private t0()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->y()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method private u0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0:Landroid/view/View;

    return-object p0
.end method

.method private v0()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    return-object p0
.end method

.method private w0()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/k3$d;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3$d;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:J

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_3
    if-gt v8, v7, :cond_d

    if-ne v8, v1, :cond_4

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:J

    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v2, v8, v12}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/k3$d;

    iget-wide v13, v12, Lcom/google/android/exoplayer2/k3$d;->n:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    goto/16 :goto_8

    :cond_5
    iget v12, v12, Lcom/google/android/exoplayer2/k3$d;->o:I

    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/k3$d;

    iget v14, v13, Lcom/google/android/exoplayer2/k3$d;->p:I

    if-gt v12, v14, :cond_c

    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/k3;->j(ILcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/k3$b;->r()I

    move-result v13

    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/k3$b;->f()I

    move-result v14

    :goto_5
    if-ge v13, v14, :cond_b

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/k3$b;->i(I)J

    move-result-wide v17

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v4, v17, v19

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    iget-wide v3, v4, Lcom/google/android/exoplayer2/k3$b;->d:J

    cmp-long v17, v3, v15

    if-nez v17, :cond_6

    goto :goto_7

    :cond_6
    move-wide/from16 v17, v3

    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/k3$b;->q()J

    move-result-wide v3

    add-long v17, v17, v3

    cmp-long v3, v17, v5

    if-ltz v3, :cond_a

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    array-length v4, v3

    if-ne v11, v4, :cond_9

    array-length v4, v3

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    :goto_6
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    add-long v17, v9, v17

    invoke-static/range {v17 .. v18}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v17

    aput-wide v17, v3, v11

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/k3$b;->s(I)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    iget-wide v3, v13, Lcom/google/android/exoplayer2/k3$d;->n:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_8
    move-wide v5, v9

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    :goto_9
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    if-eqz v3, :cond_11

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/n0;->setDuration(J)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    array-length v1, v1

    add-int v2, v11, v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    array-length v4, v3

    if-le v2, v4, :cond_10

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/n0;->setAdGroupTimesMs([J[ZI)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    return-void
.end method

.method private x0()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Z()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;->l(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->v()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->w()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_7

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T(Lcom/google/android/exoplayer2/o2;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U(Lcom/google/android/exoplayer2/o2;)V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->f()V

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->m()V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V(Lcom/google/android/exoplayer2/o2;)V

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method g0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/o2;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->C()V

    return-void
.end method

.method public hideImmediately()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->F()V

    return-void
.end method

.method public isAnimationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->I()Z

    move-result v0

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->J()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method k0()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->P()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->Q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/i0;->R(ZIIII)V

    return-void
.end method

.method public removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/i0;->Y(Z)V

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0(Landroid/view/View;Z)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/o2;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/o2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->k()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o2;->A(Lcom/google/android/exoplayer2/o2$d;)V

    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/o2;->C(Lcom/google/android/exoplayer2/o2$d;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/o2;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o2;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/o2;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/o2;->setRepeatMode(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->c0()V

    return-void
.end method

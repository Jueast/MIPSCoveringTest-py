cal_r = {"use":{'rs':1, 'rt':1},
         "new":{'E':{'rd':1},
                'M':{'rd':0}
               }
        }

cal_i = {"use":{'rs':1},
         "new":{'E':{'rt':1},
                'M':{'rt':0}
               }
        }

load =  {"use":{'rs':1},
         "new":{'E':{'rt':2},
                'M':{'rt':2}
               }
        }

store = {"use":{'rs':1, 'rt':2},
         "new":{}
        }

j_r = { "use":{'rs':0},
        "new":{}
      }
b_type = {"use":{'rs':0, 'rt':0},
         "new":{}
        }
link = {"use":{},
        "new":{'$ra':0}}
j_o = {"use":{},
     "new":{}}

if ["$currency" == "usd"]; then
   inr=$(($1*85))
   echo USD currency in INR = $inr
fi

if ["$currency" == "aud"]; then
   inr=$(($1*55))
   echo CAD currency in INR = $inr
fi

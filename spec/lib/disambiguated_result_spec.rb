# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'active_support'

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../../lib/springsense-ruby/disambiguated_result')

describe DisambiguatedSentence do

  describe "when has only one disambiguation" do
    before :each do
      @sentence_json = <<SENTENCE_JSON
[{"terms": [{"lemma": "dish", "word": "dish", "POS": "NN", "meanings": [{"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a particular item of prepared food", "meaning": "dish_n_02"}, {"definition": "the quantity that a dish will hold", "meaning": "dish_n_03"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "very", "word": "very", "POS": "RB", "meanings": []}, {"lemma": "hot", "word": "hot", "POS": "JJ", "meanings": []}, {"lemma": "fat", "word": "fat", "POS": "JJ", "meanings": []}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.41416170226575594, 0.32219207077673256, 0.26364622695751139]}, {"terms": [{"lemma": "Send", "word": "Send", "POS": "VB", "meanings": []}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "into", "word": "into", "POS": "IN", "meanings": []}, {"lemma": "another", "word": "another", "POS": "DT", "meanings": []}, {"lemma": "one", "word": "one", "POS": "CD", "meanings": []}, {"lemma": "can", "word": "can", "POS": "MD", "meanings": []}, {"lemma": "make", "word": "make", "POS": "VB", "meanings": []}, {"lemma": "little", "word": "little", "POS": "JJ", "meanings": []}, {"lemma": "feculina", "word": "feculina", "POS": "NN", "meanings": []}, {"lemma": "flour", "word": "flour", "POS": "NN", "meanings": [{"definition": "fine powdery foodstuff obtained by grinding and sifting the meal of a cereal grain", "meaning": "flour_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [1.0]}, {"terms": [{"lemma": "Beat", "word": "Beat", "POS": "NNP", "meanings": [{"definition": "the rhythmic contraction and expansion of the arteries with each beat of the heart", "meaning": "pulse_n_02"}, {"definition": "the rhythmic contraction and expansion of the arteries with each beat of the heart", "meaning": "pulse_n_02"}, {"definition": "the rhythmic contraction and expansion of the arteries with each beat of the heart", "meaning": "pulse_n_02"}]}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "through", "word": "through", "POS": "IN", "meanings": []}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "sieve", "word": "sieve", "POS": "NN", "meanings": [{"definition": "a strainer for separating lumps from powdered material or grading particles", "meaning": "sieve_n_01"}, {"definition": "a strainer for separating lumps from powdered material or grading particles", "meaning": "sieve_n_01"}, {"definition": "a strainer for separating lumps from powdered material or grading particles", "meaning": "sieve_n_01"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "return", "word": "return", "POS": "NN", "meanings": [{"definition": "a tennis stroke that sends the ball back to the other player", "meaning": "return_n_11"}, {"definition": "a tennis stroke that sends the ball back to the other player", "meaning": "return_n_11"}, {"definition": "a tennis stroke that sends the ball back to the other player", "meaning": "return_n_11"}]}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "down", "word": "down", "POS": "RB", "meanings": []}, {"lemma": "stamp", "word": "stamp", "POS": "VB", "meanings": [{"definition": "something that can be used as an official medium of payment", "meaning": "tender_n_01"}, {"definition": "something that can be used as an official medium of payment", "meaning": "tender_n_01"}, {"definition": "a device incised to make an impression; used to secure a closing or to authenticate documents", "meaning": "seal_n_02"}]}, {"lemma": "out", "word": "out", "POS": "IN", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "water", "word": "water", "POS": "NN", "meanings": [{"definition": "binary compound that occurs at room temperature as a clear colorless odorless tasteless liquid; freezes into ice below 0 degrees centigrade and boils above 100 degrees centigrade; widely used as a solvent", "meaning": "water_n_01"}, {"definition": "binary compound that occurs at room temperature as a clear colorless odorless tasteless liquid; freezes into ice below 0 degrees centigrade and boils above 100 degrees centigrade; widely used as a solvent", "meaning": "water_n_01"}, {"definition": "binary compound that occurs at room temperature as a clear colorless odorless tasteless liquid; freezes into ice below 0 degrees centigrade and boils above 100 degrees centigrade; widely used as a solvent", "meaning": "water_n_01"}]}, {"lemma": "for", "word": "for", "POS": "IN", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "stew-pan", "word": "stew-pan", "POS": "JJ", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "this", "word": "this", "POS": "DT", "meanings": []}, {"lemma": "be", "word": "is", "POS": "VBZ", "meanings": []}, {"lemma": "well", "word": "well", "POS": "RB", "meanings": []}, {"lemma": "some", "word": "some", "POS": "DT", "meanings": []}, {"lemma": "cold_water", "word": "cold_water", "POS": "NN", "meanings": [{"definition": "disparagement of a plan or hope or expectation", "meaning": "cold_water_n_01"}, {"definition": "disparagement of a plan or hope or expectation", "meaning": "cold_water_n_01"}, {"definition": "disparagement of a plan or hope or expectation", "meaning": "cold_water_n_01"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "and", "word": "and", "POS": "CC", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "puree", "word": "puree", "POS": "NN", "meanings": [{"definition": "food prepared by cooking and straining or processed in a blender", "meaning": "puree_n_01"}, {"definition": "food prepared by cooking and straining or processed in a blender", "meaning": "puree_n_01"}, {"definition": "food prepared by cooking and straining or processed in a blender", "meaning": "puree_n_01"}]}, {"lemma": "with", "word": "with", "POS": "IN", "meanings": []}, {"lemma": "all", "word": "all", "POS": "DT", "meanings": []}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "and", "word": "and", "POS": "CC", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "shallow", "word": "shallow", "POS": "JJ", "meanings": []}, {"lemma": "case", "word": "cases", "POS": "NNS", "meanings": [{"definition": "a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy", "meaning": "lawsuit_n_01"}, {"definition": "an occurrence of something", "meaning": "case_n_01"}, {"definition": "a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy", "meaning": "lawsuit_n_01"}]}, {"lemma": "must", "word": "must", "POS": "MD", "meanings": []}, {"lemma": "already", "word": "already", "POS": "RB", "meanings": []}, {"lemma": "salt", "word": "salted", "POS": "VBN", "meanings": []}, {"lemma": "water", "word": "water", "POS": "NN", "meanings": [{"definition": "the part of the earth's surface covered with water (such as a river or lake or ocean)", "meaning": "body_of_water_n_01"}, {"definition": "the part of the earth's surface covered with water (such as a river or lake or ocean)", "meaning": "body_of_water_n_01"}, {"definition": "the part of the earth's surface covered with water (such as a river or lake or ocean)", "meaning": "body_of_water_n_01"}]}, {"lemma": "or", "word": "or", "POS": "CC", "meanings": []}, {"lemma": "Liebig", "word": "Liebig", "POS": "NNP", "meanings": [{"definition": "a point or extent in space", "meaning": "location_n_01"}, {"definition": "a point or extent in space", "meaning": "location_n_01"}, {"definition": "a point or extent in space", "meaning": "location_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.33335946805691391, 0.33333531049497095, 0.33330522144811509]}, {"terms": [{"lemma": "You", "word": "You", "POS": "PRP", "meanings": []}, {"lemma": "will", "word": "will", "POS": "MD", "meanings": []}, {"lemma": "hold", "word": "hold", "POS": "VB", "meanings": []}, {"lemma": "your", "word": "your", "POS": "PRP$", "meanings": []}, {"lemma": "omelette", "word": "omelette", "POS": "NN", "meanings": [{"definition": "beaten eggs or an egg mixture cooked until just set; may be folded around e.g. ham or cheese or jelly", "meaning": "omelet_n_01"}, {"definition": "beaten eggs or an egg mixture cooked until just set; may be folded around e.g. ham or cheese or jelly", "meaning": "omelet_n_01"}, {"definition": "beaten eggs or an egg mixture cooked until just set; may be folded around e.g. ham or cheese or jelly", "meaning": "omelet_n_01"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "so", "word": "so", "POS": "RB", "meanings": []}, {"lemma": "as", "word": "as", "POS": "IN", "meanings": []}, {"lemma": "you", "word": "you", "POS": "PRP", "meanings": []}, {"lemma": "wish", "word": "wish", "POS": "VBP", "meanings": []}, {"lemma": "to", "word": "to", "POS": "TO", "meanings": []}, {"lemma": "it", "word": "it", "POS": "PRP", "meanings": []}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "keep", "word": "keeping", "POS": "VBG", "meanings": [{"definition": "the act of retaining something", "meaning": "retention_n_01"}, {"definition": "the act of retaining something", "meaning": "retention_n_01"}, {"definition": "the responsibility of a guardian or keeper", "meaning": "guardianship_n_02"}]}, {"lemma": "hot", "word": "hot", "POS": "JJ", "meanings": []}, {"lemma": "dish", "word": "dish", "POS": "NN", "meanings": [{"definition": "an activity that you like or at which you are superior", "meaning": "cup_of_tea_n_01"}, {"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.4175396178084631, 0.29200282212523637, 0.29045756006630047]}, {"terms": [{"lemma": "A", "word": "A", "POS": "DT", "meanings": []}, {"lemma": "quart", "word": "quart", "POS": "NN", "meanings": [{"definition": "a United States liquid unit equal to 32 fluid ounces; four quarts equal one gallon", "meaning": "quart_n_01"}, {"definition": "a United States liquid unit equal to 32 fluid ounces; four quarts equal one gallon", "meaning": "quart_n_01"}, {"definition": "a United States liquid unit equal to 32 fluid ounces; four quarts equal one gallon", "meaning": "quart_n_01"}]}, {"lemma": "of", "word": "of", "POS": "IN", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "half", "word": "half", "POS": "PDT", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "lemon", "word": "lemon", "POS": "NN", "meanings": [{"definition": "yellow oval fruit with juicy acidic flesh", "meaning": "lemon_n_01"}, {"definition": "a small evergreen tree that originated in Asia but is widely cultivated for its fruit", "meaning": "lemon_n_03"}, {"definition": "a distinctive tart flavor characteristic of lemons", "meaning": "lemon_n_04"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.40972416102358711, 0.30296485683465801, 0.28731098214175488]}, {"terms": [{"lemma": "This", "word": "This", "POS": "DT", "meanings": []}, {"lemma": "dish", "word": "dish", "POS": "NN", "meanings": [{"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a particular item of prepared food", "meaning": "dish_n_02"}]}, {"lemma": "be", "word": "is", "POS": "VBZ", "meanings": []}, {"lemma": "good", "word": "good", "POS": "JJ", "meanings": []}, {"lemma": "white", "word": "white", "POS": "JJ", "meanings": []}, {"lemma": "crumb", "word": "crumb", "POS": "NN", "meanings": [{"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}]}, {"lemma": "of", "word": "of", "POS": "IN", "meanings": []}, {"lemma": "crumb", "word": "crumb", "POS": "NN", "meanings": [{"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}]}, {"lemma": "of", "word": "of", "POS": "IN", "meanings": []}, {"lemma": "carrot", "word": "carrots", "POS": "NNS", "meanings": [{"definition": "deep orange edible root of the cultivated carrot plant", "meaning": "carrot_n_01"}, {"definition": "perennial plant widely cultivated as an annual in many varieties for its long conical orange edible roots; temperate and tropical regions", "meaning": "carrot_n_02"}, {"definition": "deep orange edible root of the cultivated carrot plant", "meaning": "carrot_n_01"}]}, {"lemma": ";", "word": ";", "POS": ":", "meanings": []}, {"lemma": "then", "word": "then", "POS": "RB", "meanings": []}, {"lemma": "peel", "word": "peel", "POS": "VB", "meanings": [{"definition": "the rind of a fruit or vegetable", "meaning": "peel_n_02"}, {"definition": "the rind of a fruit or vegetable", "meaning": "peel_n_02"}, {"definition": "the rind of a fruit or vegetable", "meaning": "peel_n_02"}]}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "for", "word": "for", "POS": "IN", "meanings": []}, {"lemma": "five", "word": "five", "POS": "CD", "meanings": []}, {"lemma": "leave", "word": "leaves", "POS": "VBZ", "meanings": []}, {"lemma": "and", "word": "and", "POS": "CC", "meanings": []}, {"lemma": "five", "word": "five", "POS": "CD", "meanings": []}, {"lemma": "flat", "word": "flat", "POS": "JJ", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "meat", "word": "meat", "POS": "NN", "meanings": [{"definition": "the flesh of animals (including fishes and birds and snails) used as food", "meaning": "meat_n_01"}, {"definition": "the flesh of animals (including fishes and birds and snails) used as food", "meaning": "meat_n_01"}, {"definition": "the flesh of animals (including fishes and birds and snails) used as food", "meaning": "meat_n_01"}]}, {"lemma": "must", "word": "must", "POS": "MD", "meanings": []}, {"lemma": "exhibit", "word": "exhibit", "POS": "VB", "meanings": [{"definition": "an object or statement produced before a court of law and referred to while giving evidence", "meaning": "exhibit_n_01"}, {"definition": "an object or statement produced before a court of law and referred to while giving evidence", "meaning": "exhibit_n_01"}, {"definition": "an object or statement produced before a court of law and referred to while giving evidence", "meaning": "exhibit_n_01"}]}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "same", "word": "same", "POS": "JJ", "meanings": []}, {"lemma": "quantity", "word": "quantity", "POS": "NN", "meanings": [{"definition": "how much there is or how many there are of something that you can quantify", "meaning": "measure_n_02"}, {"definition": "how much there is or how many there are of something that you can quantify", "meaning": "measure_n_02"}, {"definition": "how much there is or how many there are of something that you can quantify", "meaning": "measure_n_02"}]}], "scores": [0.33408438942945556, 0.33297335918018733, 0.33294225139035716]}]
SENTENCE_JSON

      @sentence = DisambiguatedSentence.new(ActiveSupport::JSON.decode(@sentence_json)[1]);

      @first_variant = @sentence.variants.first      
    end

    it "#sentence_variants should work correct" do
      @sentence.sentence_variants.should eql(["Send them into another one can make little feculina flour_n_01 ."])
    end

    it "#variants should return sentences as separated variants" do
      @sentence.variants.should eql([[{"lemma"=>"Send", "word"=>"Send", "POS"=>"VB", "score"=>1.0}, {"lemma"=>"them", "word"=>"them", "POS"=>"PRP", "score"=>1.0}, {"lemma"=>"into", "word"=>"into", "POS"=>"IN", "score"=>1.0}, {"lemma"=>"another", "word"=>"another", "POS"=>"DT", "score"=>1.0}, {"lemma"=>"one", "word"=>"one", "POS"=>"CD", "score"=>1.0}, {"lemma"=>"can", "word"=>"can", "POS"=>"MD", "score"=>1.0}, {"lemma"=>"make", "word"=>"make", "POS"=>"VB", "score"=>1.0}, {"lemma"=>"little", "word"=>"little", "POS"=>"JJ", "score"=>1.0}, {"lemma"=>"feculina", "word"=>"feculina", "POS"=>"NN", "score"=>1.0}, {"lemma"=>"flour", "word"=>"flour", "POS"=>"NN", "score"=>1.0, "meaning"=>"flour_n_01", "definition"=>"fine powdery foodstuff obtained by grinding and sifting the meal of a cereal grain"}, {"lemma"=>".", "word"=>".", "POS"=>".", "score"=>1.0}]])
      
      @sentence.variants.map(&:score).should eql([1.0])
      @sentence.variants.map(&:index).should eql([0])

      @sentence.variants_text.should eql([["Send", "them", "into", "another", "one", "can", "make", "little", "feculina", "flour_n_01", "."]])
    end

    it "variant #expand should work correctly" do
        fake_neighbours = Neighbours.new({ 
            'flour_n_01' => {
              0.5 => 'flour_expanded_1', 
              0.75 => 'flour_expanded_2',
              0.76 =>  'flour_expanded_3',
            },
          })
          
        expected_result = 
            [
              "Send them into another one can make little feculina flour_n_01 .",
              "Send them into another one can make little feculina flour_expanded_1 .",
              "Send them into another one can make little feculina flour_expanded_2 .",
              "Send them into another one can make little feculina flour_expanded_3 .",
            ].sort
            
        actual_result = @first_variant.expand(fake_neighbours, 3, 0.8).map(&:to_s).sort
          
        actual_result.should eql(expected_result)
    end    
  end

    describe "when has several disambiguations that share resolved terms" do
      before :each do
        @response = # for 'cat vet'
          <<RESPONSE
[{"terms":[{"term":"cat","lemma":"cat","word":"cat","POS":"NN","offset":0,"meanings":[{"definition":"feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats","meaning":"cat_n_01"},{"definition":"any of several large cats typically able to roar and living in the wild","meaning":"big_cat_n_01"},{"definition":"any of several large cats typically able to roar and living in the wild","meaning":"big_cat_n_01"}]},{"term":"vet","lemma":"vet","word":"vet","POS":"NN","offset":4,"meanings":[{"definition":"a doctor who practices veterinary medicine","meaning":"veterinarian_n_01"},{"definition":"a person who has served in the armed forces","meaning":"veteran_n_02"},{"definition":"a doctor who practices veterinary medicine","meaning":"veterinarian_n_01"}]}],"scores":[0.33435383605446267,0.33293809775423155,0.3327080661913058]}]
RESPONSE

        @result = DisambiguatedResult.from_response(@response)

        @sentence = @result.sentences.first
        @first_variant = @sentence.variants.first      
      end
    
    context "resolved terms" do
      
      it "should have correct aggregate scores" do
        resolved_term_cat_n_01 = @first_variant[0]
        
        resolved_term_cat_n_01.word.should eql("cat")
        resolved_term_cat_n_01.meaning.should eql("cat_n_01")
        resolved_term_cat_n_01.score.should eql(0.33435383605446267)

        resolved_term_veterinarian_n_01 = @first_variant[1]
        
        resolved_term_veterinarian_n_01.should == @sentence.variants.last[1]
        resolved_term_veterinarian_n_01.word.should eql("vet")
        resolved_term_veterinarian_n_01.meaning.should eql("veterinarian_n_01")
        resolved_term_veterinarian_n_01.score.should eql(0.33435383605446267 + 0.3327080661913058)
      end
      
    end

  end
  
  
  
  describe "when has several disambiguations" do
    before :each do
      @response =
        <<RESPONSE
[{"terms": [{"lemma": "cat", "word": "cat", "POS": "NN", "meanings": [{"definition": "feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "meaning": "cat_n_01"}, {"definition": "a spiteful woman gossip", "meaning": "cat_n_03"}, {"definition": "an informal term for a youth or man", "meaning": "guy_n_01"}]}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "hat", "word": "hat", "POS": "NN", "meanings": [{"definition": "headdress that protects the head from bad weather; has shaped crown and usually a brim", "meaning": "hat_n_01"}, {"definition": "headdress that protects the head from bad weather; has shaped crown and usually a brim", "meaning": "hat_n_01"}, {"definition": "headdress that protects the head from bad weather; has shaped crown and usually a brim", "meaning": "hat_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.76837408228704862, 0.13442297720000657, 0.09720294051294473]}, {"terms": [{"lemma": "vet", "word": "vet", "POS": "NN", "meanings": [{"definition": "a doctor who practices veterinary medicine", "meaning": "veterinarian_n_01"}, {"definition": "a person who has served in the armed forces", "meaning": "veteran_n_02"}, {"definition": "a doctor who practices veterinary medicine", "meaning": "veterinarian_n_01"}]}, {"lemma": "eat", "word": "eats", "POS": "VBZ", "meanings": []}, {"lemma": "cat", "word": "cat", "POS": "NN", "meanings": [{"definition": "feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "meaning": "cat_n_01"}, {"definition": "feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "meaning": "cat_n_01"}, {"definition": "any of several large cats typically able to roar and living in the wild", "meaning": "big_cat_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.3914598932871351, 0.35425454921482941, 0.25428555749803533]}]
RESPONSE

      @result = DisambiguatedResult.from_response(@response)

      @sentence = @result.sentences.first
      @first_variant = @sentence.variants.first      
    end

    it "#variants should return sentences as separated variants" do
      @sentence.variants.should eql([[{"lemma"=>"cat", "word"=>"cat", "POS"=>"NN", "score"=>0.7683740822870486, "meaning"=>"cat_n_01", "definition"=>"feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats"}, {"lemma"=>"in", "word"=>"in", "POS"=>"IN", "score"=>0.9999999999999999}, {"lemma"=>"the", "word"=>"the", "POS"=>"DT", "score"=>0.9999999999999999}, {"lemma"=>"hat", "word"=>"hat", "POS"=>"NN", "score"=>0.9999999999999999, "meaning"=>"hat_n_01", "definition"=>"headdress that protects the head from bad weather; has shaped crown and usually a brim"}, {"lemma"=>".", "word"=>".", "POS"=>".", "score"=>0.9999999999999999}], [{"lemma"=>"cat", "word"=>"cat", "POS"=>"NN", "score"=>0.13442297720000657, "meaning"=>"cat_n_03", "definition"=>"a spiteful woman gossip"}, {"lemma"=>"in", "word"=>"in", "POS"=>"IN", "score"=>0.9999999999999999}, {"lemma"=>"the", "word"=>"the", "POS"=>"DT", "score"=>0.9999999999999999}, {"lemma"=>"hat", "word"=>"hat", "POS"=>"NN", "score"=>0.9999999999999999, "meaning"=>"hat_n_01", "definition"=>"headdress that protects the head from bad weather; has shaped crown and usually a brim"}, {"lemma"=>".", "word"=>".", "POS"=>".", "score"=>0.9999999999999999}], [{"lemma"=>"cat", "word"=>"cat", "POS"=>"NN", "score"=>0.09720294051294473, "meaning"=>"guy_n_01", "definition"=>"an informal term for a youth or man"}, {"lemma"=>"in", "word"=>"in", "POS"=>"IN", "score"=>0.9999999999999999}, {"lemma"=>"the", "word"=>"the", "POS"=>"DT", "score"=>0.9999999999999999}, {"lemma"=>"hat", "word"=>"hat", "POS"=>"NN", "score"=>0.9999999999999999, "meaning"=>"hat_n_01", "definition"=>"headdress that protects the head from bad weather; has shaped crown and usually a brim"}, {"lemma"=>".", "word"=>".", "POS"=>".", "score"=>0.9999999999999999}]])
      
      @sentence.variants.map(&:score).should eql([0.76837408228704862, 0.13442297720000657, 0.09720294051294473])
      @sentence.variants.map(&:index).should eql([0, 1, 2])
      
      @sentence.variants_text.should eql([["cat_n_01", "in", "the", "hat_n_01", "."], ["cat_n_03", "in", "the", "hat_n_01", "."], ["guy_n_01", "in", "the", "hat_n_01", "."]])
    end

    it "#variants should work correctly" do

        @first_variant.should eql(
          [
            {"lemma"=>"cat", "word"=>"cat", "POS"=>"NN", "meaning"=>"cat_n_01", "definition"=>"feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "score"=>0.7683740822870486}, 
            {"lemma"=>"in", "word"=>"in", "POS"=>"IN", "score"=>0.9999999999999999}, 
            {"lemma"=>"the", "word"=>"the", "POS"=>"DT", "score"=>0.9999999999999999}, 
            {"lemma"=>"hat", "word"=>"hat", "POS"=>"NN", "meaning"=>"hat_n_01", "definition"=>"headdress that protects the head from bad weather; has shaped crown and usually a brim", "score"=>0.9999999999999999}, 
            {"lemma"=>".", "word"=>".", "POS"=>".", "score"=>0.9999999999999999}
            ])
    end    
    
    it "variant #expand should work correctly" do
        fake_neighbours = Neighbours.new({ 
            'cat_n_01' => {
              0.5 => 'cat_expanded_1', 
              0.75 => 'cat_expanded_2',
              0.76 =>  'cat_expanded_3',
            },
            'hat_n_01' => {
              0.5 => 'hat_expanded_1', 
              0.75 => 'hat_expanded_2',
              0.9 => 'hat_shouldnt_expand_1'
            },
          })
          
        fake_neighbours.expand('cat_n_01', 3, 0.8).sort.should eql(
          [
            'cat_expanded_1', 
            'cat_expanded_2',
            'cat_expanded_3',  
            ].sort
          )
          
        @first_variant[0].expand(fake_neighbours, 3, 0.8).sort {|x,y| y.to_s <=> x.to_s }.should eql(
          [
            { 'lemma' => 'expansion', 'word' => 'expansion', 'POS'=>'NN', 'meaning' => 'cat_expanded_1', "score"=>0.0 }, 
            { 'lemma' => 'expansion', 'word' => 'expansion', 'POS'=>'NN', 'meaning' => 'cat_expanded_2', "score"=>0.0 }, 
            { 'lemma' => 'expansion', 'word' => 'expansion', 'POS'=>'NN', 'meaning' => 'cat_expanded_3', "score"=>0.0 }, 
          ].sort {|x,y| y.to_s <=> x.to_s })
          
        expected_result = 
            [
              expected_expansion('cat_n_01', 'hat_n_01'),          
              expected_expansion('cat_expanded_1', 'hat_n_01'),          
              expected_expansion('cat_expanded_2', 'hat_n_01'),          
              expected_expansion('cat_expanded_3', 'hat_n_01'),          
              expected_expansion('cat_n_01', 'hat_expanded_1'),          
              expected_expansion('cat_expanded_1', 'hat_expanded_1'),          
              expected_expansion('cat_expanded_2', 'hat_expanded_1'),          
              expected_expansion('cat_expanded_3', 'hat_expanded_1'),          
              expected_expansion('cat_n_01', 'hat_expanded_2'),          
              expected_expansion('cat_expanded_1', 'hat_expanded_2'),          
              expected_expansion('cat_expanded_2', 'hat_expanded_2'),          
              expected_expansion('cat_expanded_3', 'hat_expanded_2'),          
            ].sort
            
        actual_result = @first_variant.expand(fake_neighbours, 3, 0.8).map(&:to_s).sort
        actual_result.should eql(expected_result)
        
        actual_result = @first_variant.expand(fake_neighbours, 3, 0.8, 1).map(&:to_s).sort
        actual_result.should eql(["cat_expanded_1 in the hat_n_01 .", "cat_expanded_2 in the hat_n_01 .", "cat_expanded_3 in the hat_n_01 .", "cat_n_01 in the hat_n_01 ."])
        
    end    
    
    def expected_expansion(expanded_term1, expanded_term2)
      "#{expanded_term1} in the #{expanded_term2} ."
    end
    
  end

  describe "when has no disambiguations" do
    before :each do
      @response =
        <<RESPONSE
[{"terms": [{"lemma": "All", "word": "All", "POS": "DT", "meanings": []}, {"lemma": "genuflect", "word": "genuflect", "POS": "VB", "meanings": []}, {"lemma": "before", "word": "before", "POS": "IN", "meanings": []}, {"lemma": "me", "word": "me", "POS": "PRP", "meanings": []}], "scores": []}]
RESPONSE

      @result = DisambiguatedResult.from_response(@response)

      @sentence = @result.sentences.first
    end

    it "#variants should return one sentence variant" do
      @sentence.variants.should_not eql([])
      @sentence.variants.should eql([[{"word"=>"All", "lemma"=>"All", "POS"=>"DT", "score"=>1.0}, {"word"=>"genuflect", "lemma"=>"genuflect", "POS"=>"VB", "score"=>1.0}, {"word"=>"before", "lemma"=>"before", "POS"=>"IN", "score"=>1.0}, {"word"=>"me", "lemma"=>"me", "POS"=>"PRP", "score"=>1.0}]])
      @sentence.variants.map(&:score).should eql([1.0])
      @sentence.variants.map(&:index).should eql([0])
    end

  end

  describe "when has no disambiguations: ingham" do
    before :each do
      @response = # Text: 'ingham'
        <<RESPONSE
[{"terms":[{"term":"ingham","lemma":"ingham","word":"ingham","POS":"NN","offset":0,"meanings":[]}],"scores":[]}]
RESPONSE

      @result = DisambiguatedResult.from_response(@response)

      @sentence = @result.sentences.first
    end

    it "#variants should return one sentence variant" do
      @sentence.variants.should_not eql([])
      @sentence.variants.should eql([[{"term"=>"ingham", "lemma"=>"ingham", "word"=>"ingham", "POS"=>"NN", "offset"=>0, "score"=>1.0}]])
      @sentence.variants.map(&:score).should eql([1.0])
      @sentence.variants.map(&:index).should eql([0])
    end

  end



  describe "when has person/association" do
    before :each do
      @sentence_json = <<SENTENCE_JSON
[{"terms": [{"lemma": "Steve_Jobs", "word": "Steve_Jobs", "POS": "NNP", "meanings": [{"definition": "a human being", "meaning": "person_n_01"}, {"definition": "a workplace; as in the expression 'on the job'; ", "meaning": "job_n_03"}, {"definition": "A person, institution or place name called 'Steve Jobs'", "meaning": "Steve_Jobs_n_01"}]}], "scores": [0.33333340921091204, 0.33333334712849727, 0.33333324366059075]}]
SENTENCE_JSON

      @sentence = DisambiguatedSentence.new(ActiveSupport::JSON.decode(@sentence_json)[0]);
    end

    it "#sentence_variants should work correct" do
      @sentence.sentence_variants.should eql(["Steve Jobs", "job_n_03", "Steve_Jobs_n_01"])
    end

  end

end

describe DisambiguatedResult do

  describe "When the response contains equal number of meanings for each noun" do
    before :each do
      @response =
        <<RESPONSE
[{"terms": [{"lemma": "cat", "word": "cat", "POS": "NN", "meanings": [{"definition": "feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "meaning": "cat_n_01"}, {"definition": "a spiteful woman gossip", "meaning": "cat_n_03"}, {"definition": "an informal term for a youth or man", "meaning": "guy_n_01"}]}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "hat", "word": "hat", "POS": "NN", "meanings": [{"definition": "headdress that protects the head from bad weather; has shaped crown and usually a brim", "meaning": "hat_n_01"}, {"definition": "headdress that protects the head from bad weather; has shaped crown and usually a brim", "meaning": "hat_n_01"}, {"definition": "headdress that protects the head from bad weather; has shaped crown and usually a brim", "meaning": "hat_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.76837408228704862, 0.13442297720000657, 0.09720294051294473]}, {"terms": [{"lemma": "vet", "word": "vet", "POS": "NN", "meanings": [{"definition": "a doctor who practices veterinary medicine", "meaning": "veterinarian_n_01"}, {"definition": "a person who has served in the armed forces", "meaning": "veteran_n_02"}, {"definition": "a doctor who practices veterinary medicine", "meaning": "veterinarian_n_01"}]}, {"lemma": "eat", "word": "eats", "POS": "VBZ", "meanings": []}, {"lemma": "cat", "word": "cat", "POS": "NN", "meanings": [{"definition": "feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "meaning": "cat_n_01"}, {"definition": "feline mammal usually having thick soft fur and no ability to roar: domestic cats; wildcats", "meaning": "cat_n_01"}, {"definition": "any of several large cats typically able to roar and living in the wild", "meaning": "big_cat_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.3914598932871351, 0.35425454921482941, 0.25428555749803533]}]
RESPONSE

      @result = DisambiguatedResult.from_response(@response)
    end

    it "should instantiate correctly" do
      @result.should_not be_nil
    end

    it "#text_variants_in_rank_order should return the aggregated senteces in simple form" do
      @result.text_variants_in_rank_order.should eql(
        [ "cat_n_01 in the hat_n_01 .\nveterinarian_n_01 eats cat_n_01 .",
          "cat_n_03 in the hat_n_01 .\nveteran_n_02 eats cat_n_01 .",
          "guy_n_01 in the hat_n_01 .\nveterinarian_n_01 eats big_cat_n_01 ." ])
    end

  end

  describe "When the response contains non-equal number of meanings for each noun" do

    before :each do
      @response =
        <<RESPONSE2
[{"terms": [{"lemma": "dish", "word": "dish", "POS": "NN", "meanings": [{"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a particular item of prepared food", "meaning": "dish_n_02"}, {"definition": "the quantity that a dish will hold", "meaning": "dish_n_03"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "very", "word": "very", "POS": "RB", "meanings": []}, {"lemma": "hot", "word": "hot", "POS": "JJ", "meanings": []}, {"lemma": "fat", "word": "fat", "POS": "JJ", "meanings": []}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.41416170226575594, 0.32219207077673256, 0.26364622695751139]}, {"terms": [{"lemma": "Send", "word": "Send", "POS": "VB", "meanings": []}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "into", "word": "into", "POS": "IN", "meanings": []}, {"lemma": "another", "word": "another", "POS": "DT", "meanings": []}, {"lemma": "one", "word": "one", "POS": "CD", "meanings": []}, {"lemma": "can", "word": "can", "POS": "MD", "meanings": []}, {"lemma": "make", "word": "make", "POS": "VB", "meanings": []}, {"lemma": "little", "word": "little", "POS": "JJ", "meanings": []}, {"lemma": "feculina", "word": "feculina", "POS": "NN", "meanings": []}, {"lemma": "flour", "word": "flour", "POS": "NN", "meanings": [{"definition": "fine powdery foodstuff obtained by grinding and sifting the meal of a cereal grain", "meaning": "flour_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [1.0]}, {"terms": [{"lemma": "Beat", "word": "Beat", "POS": "NNP", "meanings": [{"definition": "the rhythmic contraction and expansion of the arteries with each beat of the heart", "meaning": "pulse_n_02"}, {"definition": "the rhythmic contraction and expansion of the arteries with each beat of the heart", "meaning": "pulse_n_02"}, {"definition": "the rhythmic contraction and expansion of the arteries with each beat of the heart", "meaning": "pulse_n_02"}]}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "through", "word": "through", "POS": "IN", "meanings": []}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "sieve", "word": "sieve", "POS": "NN", "meanings": [{"definition": "a strainer for separating lumps from powdered material or grading particles", "meaning": "sieve_n_01"}, {"definition": "a strainer for separating lumps from powdered material or grading particles", "meaning": "sieve_n_01"}, {"definition": "a strainer for separating lumps from powdered material or grading particles", "meaning": "sieve_n_01"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "return", "word": "return", "POS": "NN", "meanings": [{"definition": "a tennis stroke that sends the ball back to the other player", "meaning": "return_n_11"}, {"definition": "a tennis stroke that sends the ball back to the other player", "meaning": "return_n_11"}, {"definition": "a tennis stroke that sends the ball back to the other player", "meaning": "return_n_11"}]}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "down", "word": "down", "POS": "RB", "meanings": []}, {"lemma": "stamp", "word": "stamp", "POS": "VB", "meanings": [{"definition": "something that can be used as an official medium of payment", "meaning": "tender_n_01"}, {"definition": "something that can be used as an official medium of payment", "meaning": "tender_n_01"}, {"definition": "a device incised to make an impression; used to secure a closing or to authenticate documents", "meaning": "seal_n_02"}]}, {"lemma": "out", "word": "out", "POS": "IN", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "water", "word": "water", "POS": "NN", "meanings": [{"definition": "binary compound that occurs at room temperature as a clear colorless odorless tasteless liquid; freezes into ice below 0 degrees centigrade and boils above 100 degrees centigrade; widely used as a solvent", "meaning": "water_n_01"}, {"definition": "binary compound that occurs at room temperature as a clear colorless odorless tasteless liquid; freezes into ice below 0 degrees centigrade and boils above 100 degrees centigrade; widely used as a solvent", "meaning": "water_n_01"}, {"definition": "binary compound that occurs at room temperature as a clear colorless odorless tasteless liquid; freezes into ice below 0 degrees centigrade and boils above 100 degrees centigrade; widely used as a solvent", "meaning": "water_n_01"}]}, {"lemma": "for", "word": "for", "POS": "IN", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "stew-pan", "word": "stew-pan", "POS": "JJ", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "this", "word": "this", "POS": "DT", "meanings": []}, {"lemma": "be", "word": "is", "POS": "VBZ", "meanings": []}, {"lemma": "well", "word": "well", "POS": "RB", "meanings": []}, {"lemma": "some", "word": "some", "POS": "DT", "meanings": []}, {"lemma": "cold_water", "word": "cold_water", "POS": "NN", "meanings": [{"definition": "disparagement of a plan or hope or expectation", "meaning": "cold_water_n_01"}, {"definition": "disparagement of a plan or hope or expectation", "meaning": "cold_water_n_01"}, {"definition": "disparagement of a plan or hope or expectation", "meaning": "cold_water_n_01"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "and", "word": "and", "POS": "CC", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "puree", "word": "puree", "POS": "NN", "meanings": [{"definition": "food prepared by cooking and straining or processed in a blender", "meaning": "puree_n_01"}, {"definition": "food prepared by cooking and straining or processed in a blender", "meaning": "puree_n_01"}, {"definition": "food prepared by cooking and straining or processed in a blender", "meaning": "puree_n_01"}]}, {"lemma": "with", "word": "with", "POS": "IN", "meanings": []}, {"lemma": "all", "word": "all", "POS": "DT", "meanings": []}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "and", "word": "and", "POS": "CC", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "shallow", "word": "shallow", "POS": "JJ", "meanings": []}, {"lemma": "case", "word": "cases", "POS": "NNS", "meanings": [{"definition": "a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy", "meaning": "lawsuit_n_01"}, {"definition": "an occurrence of something", "meaning": "case_n_01"}, {"definition": "a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy", "meaning": "lawsuit_n_01"}]}, {"lemma": "must", "word": "must", "POS": "MD", "meanings": []}, {"lemma": "already", "word": "already", "POS": "RB", "meanings": []}, {"lemma": "salt", "word": "salted", "POS": "VBN", "meanings": []}, {"lemma": "water", "word": "water", "POS": "NN", "meanings": [{"definition": "the part of the earth's surface covered with water (such as a river or lake or ocean)", "meaning": "body_of_water_n_01"}, {"definition": "the part of the earth's surface covered with water (such as a river or lake or ocean)", "meaning": "body_of_water_n_01"}, {"definition": "the part of the earth's surface covered with water (such as a river or lake or ocean)", "meaning": "body_of_water_n_01"}]}, {"lemma": "or", "word": "or", "POS": "CC", "meanings": []}, {"lemma": "Liebig", "word": "Liebig", "POS": "NNP", "meanings": [{"definition": "a point or extent in space", "meaning": "location_n_01"}, {"definition": "a point or extent in space", "meaning": "location_n_01"}, {"definition": "a point or extent in space", "meaning": "location_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.33335946805691391, 0.33333531049497095, 0.33330522144811509]}, {"terms": [{"lemma": "You", "word": "You", "POS": "PRP", "meanings": []}, {"lemma": "will", "word": "will", "POS": "MD", "meanings": []}, {"lemma": "hold", "word": "hold", "POS": "VB", "meanings": []}, {"lemma": "your", "word": "your", "POS": "PRP$", "meanings": []}, {"lemma": "omelette", "word": "omelette", "POS": "NN", "meanings": [{"definition": "beaten eggs or an egg mixture cooked until just set; may be folded around e.g. ham or cheese or jelly", "meaning": "omelet_n_01"}, {"definition": "beaten eggs or an egg mixture cooked until just set; may be folded around e.g. ham or cheese or jelly", "meaning": "omelet_n_01"}, {"definition": "beaten eggs or an egg mixture cooked until just set; may be folded around e.g. ham or cheese or jelly", "meaning": "omelet_n_01"}]}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "so", "word": "so", "POS": "RB", "meanings": []}, {"lemma": "as", "word": "as", "POS": "IN", "meanings": []}, {"lemma": "you", "word": "you", "POS": "PRP", "meanings": []}, {"lemma": "wish", "word": "wish", "POS": "VBP", "meanings": []}, {"lemma": "to", "word": "to", "POS": "TO", "meanings": []}, {"lemma": "it", "word": "it", "POS": "PRP", "meanings": []}, {"lemma": ",", "word": ",", "POS": ",", "meanings": []}, {"lemma": "keep", "word": "keeping", "POS": "VBG", "meanings": [{"definition": "the act of retaining something", "meaning": "retention_n_01"}, {"definition": "the act of retaining something", "meaning": "retention_n_01"}, {"definition": "the responsibility of a guardian or keeper", "meaning": "guardianship_n_02"}]}, {"lemma": "hot", "word": "hot", "POS": "JJ", "meanings": []}, {"lemma": "dish", "word": "dish", "POS": "NN", "meanings": [{"definition": "an activity that you like or at which you are superior", "meaning": "cup_of_tea_n_01"}, {"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.4175396178084631, 0.29200282212523637, 0.29045756006630047]}, {"terms": [{"lemma": "A", "word": "A", "POS": "DT", "meanings": []}, {"lemma": "quart", "word": "quart", "POS": "NN", "meanings": [{"definition": "a United States liquid unit equal to 32 fluid ounces; four quarts equal one gallon", "meaning": "quart_n_01"}, {"definition": "a United States liquid unit equal to 32 fluid ounces; four quarts equal one gallon", "meaning": "quart_n_01"}, {"definition": "a United States liquid unit equal to 32 fluid ounces; four quarts equal one gallon", "meaning": "quart_n_01"}]}, {"lemma": "of", "word": "of", "POS": "IN", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "half", "word": "half", "POS": "PDT", "meanings": []}, {"lemma": "a", "word": "a", "POS": "DT", "meanings": []}, {"lemma": "lemon", "word": "lemon", "POS": "NN", "meanings": [{"definition": "yellow oval fruit with juicy acidic flesh", "meaning": "lemon_n_01"}, {"definition": "a small evergreen tree that originated in Asia but is widely cultivated for its fruit", "meaning": "lemon_n_03"}, {"definition": "a distinctive tart flavor characteristic of lemons", "meaning": "lemon_n_04"}]}, {"lemma": ".", "word": ".", "POS": ".", "meanings": []}], "scores": [0.40972416102358711, 0.30296485683465801, 0.28731098214175488]}, {"terms": [{"lemma": "This", "word": "This", "POS": "DT", "meanings": []}, {"lemma": "dish", "word": "dish", "POS": "NN", "meanings": [{"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a piece of dishware normally used as a container for holding or serving food", "meaning": "dish_n_01"}, {"definition": "a particular item of prepared food", "meaning": "dish_n_02"}]}, {"lemma": "be", "word": "is", "POS": "VBZ", "meanings": []}, {"lemma": "good", "word": "good", "POS": "JJ", "meanings": []}, {"lemma": "white", "word": "white", "POS": "JJ", "meanings": []}, {"lemma": "crumb", "word": "crumb", "POS": "NN", "meanings": [{"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}]}, {"lemma": "of", "word": "of", "POS": "IN", "meanings": []}, {"lemma": "crumb", "word": "crumb", "POS": "NN", "meanings": [{"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}, {"definition": "small piece of e.g. bread or cake", "meaning": "crumb_n_03"}]}, {"lemma": "of", "word": "of", "POS": "IN", "meanings": []}, {"lemma": "carrot", "word": "carrots", "POS": "NNS", "meanings": [{"definition": "deep orange edible root of the cultivated carrot plant", "meaning": "carrot_n_01"}, {"definition": "perennial plant widely cultivated as an annual in many varieties for its long conical orange edible roots; temperate and tropical regions", "meaning": "carrot_n_02"}, {"definition": "deep orange edible root of the cultivated carrot plant", "meaning": "carrot_n_01"}]}, {"lemma": ";", "word": ";", "POS": ":", "meanings": []}, {"lemma": "then", "word": "then", "POS": "RB", "meanings": []}, {"lemma": "peel", "word": "peel", "POS": "VB", "meanings": [{"definition": "the rind of a fruit or vegetable", "meaning": "peel_n_02"}, {"definition": "the rind of a fruit or vegetable", "meaning": "peel_n_02"}, {"definition": "the rind of a fruit or vegetable", "meaning": "peel_n_02"}]}, {"lemma": "them", "word": "them", "POS": "PRP", "meanings": []}, {"lemma": "for", "word": "for", "POS": "IN", "meanings": []}, {"lemma": "five", "word": "five", "POS": "CD", "meanings": []}, {"lemma": "leave", "word": "leaves", "POS": "VBZ", "meanings": []}, {"lemma": "and", "word": "and", "POS": "CC", "meanings": []}, {"lemma": "five", "word": "five", "POS": "CD", "meanings": []}, {"lemma": "flat", "word": "flat", "POS": "JJ", "meanings": []}, {"lemma": "in", "word": "in", "POS": "IN", "meanings": []}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "meat", "word": "meat", "POS": "NN", "meanings": [{"definition": "the flesh of animals (including fishes and birds and snails) used as food", "meaning": "meat_n_01"}, {"definition": "the flesh of animals (including fishes and birds and snails) used as food", "meaning": "meat_n_01"}, {"definition": "the flesh of animals (including fishes and birds and snails) used as food", "meaning": "meat_n_01"}]}, {"lemma": "must", "word": "must", "POS": "MD", "meanings": []}, {"lemma": "exhibit", "word": "exhibit", "POS": "VB", "meanings": [{"definition": "an object or statement produced before a court of law and referred to while giving evidence", "meaning": "exhibit_n_01"}, {"definition": "an object or statement produced before a court of law and referred to while giving evidence", "meaning": "exhibit_n_01"}, {"definition": "an object or statement produced before a court of law and referred to while giving evidence", "meaning": "exhibit_n_01"}]}, {"lemma": "the", "word": "the", "POS": "DT", "meanings": []}, {"lemma": "same", "word": "same", "POS": "JJ", "meanings": []}, {"lemma": "quantity", "word": "quantity", "POS": "NN", "meanings": [{"definition": "how much there is or how many there are of something that you can quantify", "meaning": "measure_n_02"}, {"definition": "how much there is or how many there are of something that you can quantify", "meaning": "measure_n_02"}, {"definition": "how much there is or how many there are of something that you can quantify", "meaning": "measure_n_02"}]}], "scores": [0.33408438942945556, 0.33297335918018733, 0.33294225139035716]}]
RESPONSE2

      @result = DisambiguatedResult.from_response(@response)
    end

    it "should instantiate correctly" do
      @result.should_not be_nil
    end

    it "#text_variants_in_rank_order should return the aggregated senteces in simple form" do
      @result.text_variants_in_rank_order.should eql(
        ["dish_n_01 , very hot fat .\nSend them into another one can make little feculina flour_n_01 .\npulse_n_02 them through the sieve_n_01 , return_n_11 them down tender_n_01 out in water_n_01 for a stew-pan in this is well some cold_water_n_01 , and a puree_n_01 with all , and in a shallow lawsuit_n_01 must already salted body_of_water_n_01 or Liebig .\nYou will hold your omelet_n_01 , so as you wish to it , retention_n_01 hot cup_of_tea_n_01 .\nA quart_n_01 of a half a lemon_n_01 .\nThis dish_n_01 is good white crumb_n_03 of crumb_n_03 of carrot_n_01 ; then peel_n_02 them for five leaves and five flat in the meat_n_01 must exhibit_n_01 the same measure_n_02", "dish_n_02 , very hot fat .\nSend them into another one can make little feculina flour_n_01 .\npulse_n_02 them through the sieve_n_01 , return_n_11 them down tender_n_01 out in water_n_01 for a stew-pan in this is well some cold_water_n_01 , and a puree_n_01 with all , and in a shallow case_n_01 must already salted body_of_water_n_01 or Liebig .\nYou will hold your omelet_n_01 , so as you wish to it , retention_n_01 hot dish_n_01 .\nA quart_n_01 of a half a lemon_n_03 .\nThis dish_n_01 is good white crumb_n_03 of crumb_n_03 of carrot_n_02 ; then peel_n_02 them for five leaves and five flat in the meat_n_01 must exhibit_n_01 the same measure_n_02", "dish_n_03 , very hot fat .\nSend them into another one can make little feculina flour_n_01 .\npulse_n_02 them through the sieve_n_01 , return_n_11 them down seal_n_02 out in water_n_01 for a stew-pan in this is well some cold_water_n_01 , and a puree_n_01 with all , and in a shallow lawsuit_n_01 must already salted body_of_water_n_01 or Liebig .\nYou will hold your omelet_n_01 , so as you wish to it , guardianship_n_02 hot dish_n_01 .\nA quart_n_01 of a half a lemon_n_04 .\nThis dish_n_02 is good white crumb_n_03 of crumb_n_03 of carrot_n_01 ; then peel_n_02 them for five leaves and five flat in the meat_n_01 must exhibit_n_01 the same measure_n_02"]
      )
    end

  end

end
  

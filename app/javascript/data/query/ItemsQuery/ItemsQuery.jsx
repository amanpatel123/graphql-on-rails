import { useQuery } from '@apollo/react-hooks';
import gql from 'graphql-tag';

const name = "ItemsQuery";

const ITEMS_QUERY = gql`
  query ${name} {
    items {
      id
      title
      user {
        email
      }
    }
  }
`;

const useItemsQuery = () => useQuery(ITEMS_QUERY);

export { useItemsQuery, ITEMS_QUERY };